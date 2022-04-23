package com.google.api.client.googleapis.notifications;

import com.google.api.client.a.aa;
import com.google.api.client.a.y;
import java.io.Serializable;
import java.util.UUID;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/notifications/b.class */
public final class b implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final String f31754a = "b";

    /* renamed from: b  reason: collision with root package name */
    private final Lock f31755b;

    /* renamed from: c  reason: collision with root package name */
    private final f f31756c;

    /* renamed from: d  reason: collision with root package name */
    private String f31757d;
    private Long e;
    private final String f;
    private String g;

    public b(f fVar) {
        this(fVar, UUID.randomUUID().toString());
    }

    public b(f fVar, String str) {
        this.f31755b = new ReentrantLock();
        this.f31756c = (f) aa.a(fVar);
        this.f = (String) aa.a(str);
    }

    private f a() {
        this.f31755b.lock();
        try {
            return this.f31756c;
        } finally {
            this.f31755b.unlock();
        }
    }

    private String b() {
        this.f31755b.lock();
        try {
            return this.f31757d;
        } finally {
            this.f31755b.unlock();
        }
    }

    private Long c() {
        this.f31755b.lock();
        try {
            return this.e;
        } finally {
            this.f31755b.unlock();
        }
    }

    private String d() {
        this.f31755b.lock();
        try {
            return this.f;
        } finally {
            this.f31755b.unlock();
        }
    }

    private String e() {
        this.f31755b.lock();
        try {
            return this.g;
        } finally {
            this.f31755b.unlock();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        return d().equals(((b) obj).d());
    }

    public final int hashCode() {
        return d().hashCode();
    }

    public final String toString() {
        return y.a(b.class).a("notificationCallback", a()).a("clientToken", b()).a("expiration", c()).a("id", d()).a("topicId", e()).toString();
    }
}
