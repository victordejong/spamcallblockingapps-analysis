package org.threeten.p040bp.zone;

import java.util.HashSet;
import java.util.Iterator;
import java.util.NavigableMap;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.threeten.p040bp.jdk8.Jdk8Methods;
/* renamed from: org.threeten.bp.zone.ZoneRulesProvider */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneRulesProvider.class */
public abstract class ZoneRulesProvider {
    private static final CopyOnWriteArrayList<ZoneRulesProvider> PROVIDERS = new CopyOnWriteArrayList<>();
    private static final ConcurrentMap<String, ZoneRulesProvider> ZONES = new ConcurrentHashMap(512, 0.75f, 2);

    static {
        Iterator it = ServiceLoader.load(ZoneRulesProvider.class, ZoneRulesProvider.class.getClassLoader()).iterator();
        while (it.hasNext()) {
            try {
                registerProvider0((ZoneRulesProvider) it.next());
            } catch (ServiceConfigurationError e) {
                if (!(e.getCause() instanceof SecurityException)) {
                    throw e;
                }
            }
        }
    }

    public static Set<String> getAvailableZoneIds() {
        return new HashSet(ZONES.keySet());
    }

    private static ZoneRulesProvider getProvider(String str) {
        ZoneRulesProvider zoneRulesProvider = ZONES.get(str);
        if (zoneRulesProvider != null) {
            return zoneRulesProvider;
        }
        if (ZONES.isEmpty()) {
            throw new ZoneRulesException("No time-zone data files registered");
        }
        throw new ZoneRulesException("Unknown time-zone ID: " + str);
    }

    public static ZoneRules getRules(String str, boolean z) {
        Jdk8Methods.requireNonNull(str, "zoneId");
        return getProvider(str).provideRules(str, z);
    }

    public static NavigableMap<String, ZoneRules> getVersions(String str) {
        Jdk8Methods.requireNonNull(str, "zoneId");
        return getProvider(str).provideVersions(str);
    }

    public static boolean refresh() {
        Iterator<ZoneRulesProvider> it = PROVIDERS.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= it.next().provideRefresh();
        }
        return z;
    }

    public static void registerProvider(ZoneRulesProvider zoneRulesProvider) {
        Jdk8Methods.requireNonNull(zoneRulesProvider, "provider");
        registerProvider0(zoneRulesProvider);
        PROVIDERS.add(zoneRulesProvider);
    }

    private static void registerProvider0(ZoneRulesProvider zoneRulesProvider) {
        for (String str : zoneRulesProvider.provideZoneIds()) {
            Jdk8Methods.requireNonNull(str, "zoneId");
            if (ZONES.putIfAbsent(str, zoneRulesProvider) != null) {
                throw new ZoneRulesException("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + zoneRulesProvider);
            }
        }
    }

    protected boolean provideRefresh() {
        return false;
    }

    protected abstract ZoneRules provideRules(String str, boolean z);

    protected abstract NavigableMap<String, ZoneRules> provideVersions(String str);

    protected abstract Set<String> provideZoneIds();
}
