package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import okhttp3.Route;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lokhttp3/internal/connection/RouteDatabase;", "", "()V", "failedRoutes", "", "Lokhttp3/Route;", "connected", "", "route", "failed", "failedRoute", "shouldPostpone", "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/connection/RouteDatabase.class */
public final class RouteDatabase {
    private final Set<Route> failedRoutes = new LinkedHashSet();

    public final void connected(Route route) {
        synchronized (this) {
            C18524p.m3840d(route, "route");
            this.failedRoutes.remove(route);
        }
    }

    public final void failed(Route failedRoute) {
        synchronized (this) {
            C18524p.m3840d(failedRoute, "failedRoute");
            this.failedRoutes.add(failedRoute);
        }
    }

    public final boolean shouldPostpone(Route route) {
        boolean contains;
        synchronized (this) {
            C18524p.m3840d(route, "route");
            contains = this.failedRoutes.contains(route);
        }
        return contains;
    }
}
