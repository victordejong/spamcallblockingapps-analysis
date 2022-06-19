package com.criteo.publisher.logging;

import android.content.Context;
import android.util.Log;
import com.criteo.publisher.AbstractC8336h;
import com.criteo.publisher.C8532x;
import com.criteo.publisher.p249i.C8350c;
import com.criteo.publisher.p256m0.C8424b;
import com.criteo.publisher.p256m0.C8433g;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.logging.k */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/k.class */
public class C8412k {

    /* renamed from: a */
    final SimpleDateFormat f30145a;

    /* renamed from: b */
    final Context f30146b;

    /* renamed from: c */
    final C8424b f30147c;

    /* renamed from: d */
    final C8532x f30148d;

    /* renamed from: e */
    final C8350c f30149e;

    /* renamed from: f */
    final AbstractC8336h f30150f;

    /* renamed from: g */
    final C8405i f30151g;

    /* renamed from: h */
    private final C8433g f30152h;

    public C8412k(C8433g buildConfigWrapper, Context context, C8424b advertisingInfo, C8532x session, C8350c integrationRegistry, AbstractC8336h clock, C8405i publisherCodeRemover) {
        C18524p.m3841c(buildConfigWrapper, "buildConfigWrapper");
        C18524p.m3841c(context, "context");
        C18524p.m3841c(advertisingInfo, "advertisingInfo");
        C18524p.m3841c(session, "session");
        C18524p.m3841c(integrationRegistry, "integrationRegistry");
        C18524p.m3841c(clock, "clock");
        C18524p.m3841c(publisherCodeRemover, "publisherCodeRemover");
        this.f30152h = buildConfigWrapper;
        this.f30146b = context;
        this.f30147c = advertisingInfo;
        this.f30148d = session;
        this.f30149e = integrationRegistry;
        this.f30150f = clock;
        this.f30151g = publisherCodeRemover;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.ROOT);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.f30145a = simpleDateFormat;
    }

    /* renamed from: a */
    public static String m25724a() {
        Thread currentThread = Thread.currentThread();
        C18524p.m3849a((Object) currentThread, "Thread.currentThread()");
        String name = currentThread.getName();
        C18524p.m3849a((Object) name, "Thread.currentThread().name");
        return name;
    }

    /* renamed from: a */
    public static String m25723a(Throwable throwable) {
        C18524p.m3841c(throwable, "throwable");
        return Log.getStackTraceString(throwable);
    }
}
