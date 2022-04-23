package com.criteo.publisher.logging;

import android.content.Context;
import android.util.Log;
import com.criteo.publisher.h;
import com.criteo.publisher.i.c;
import com.criteo.publisher.m0.b;
import com.criteo.publisher.m0.g;
import com.criteo.publisher.x;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/k.class */
public class k {

    /* renamed from: a  reason: collision with root package name */
    final SimpleDateFormat f17469a;

    /* renamed from: b  reason: collision with root package name */
    final Context f17470b;

    /* renamed from: c  reason: collision with root package name */
    final b f17471c;

    /* renamed from: d  reason: collision with root package name */
    final x f17472d;
    final c e;
    final h f;
    final i g;
    private final g h;

    public k(g buildConfigWrapper, Context context, b advertisingInfo, x session, c integrationRegistry, h clock, i publisherCodeRemover) {
        p.c(buildConfigWrapper, "buildConfigWrapper");
        p.c(context, "context");
        p.c(advertisingInfo, "advertisingInfo");
        p.c(session, "session");
        p.c(integrationRegistry, "integrationRegistry");
        p.c(clock, "clock");
        p.c(publisherCodeRemover, "publisherCodeRemover");
        this.h = buildConfigWrapper;
        this.f17470b = context;
        this.f17471c = advertisingInfo;
        this.f17472d = session;
        this.e = integrationRegistry;
        this.f = clock;
        this.g = publisherCodeRemover;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.ROOT);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.f17469a = simpleDateFormat;
    }

    public static String a() {
        Thread currentThread = Thread.currentThread();
        p.a((Object) currentThread, "Thread.currentThread()");
        String name = currentThread.getName();
        p.a((Object) name, "Thread.currentThread().name");
        return name;
    }

    public static String a(Throwable throwable) {
        p.c(throwable, "throwable");
        return Log.getStackTraceString(throwable);
    }
}
