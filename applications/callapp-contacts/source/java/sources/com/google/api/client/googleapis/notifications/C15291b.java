package com.google.api.client.googleapis.notifications;

import com.google.api.client.p379a.C15207aa;
import com.google.api.client.p379a.C15255y;
import java.io.Serializable;
import java.util.UUID;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.google.api.client.googleapis.notifications.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/notifications/b.class */
public final class C15291b implements Serializable {

    /* renamed from: a */
    public static final String f55271a = "b";

    /* renamed from: b */
    private final Lock f55272b;

    /* renamed from: c */
    private final AbstractC15295f f55273c;

    /* renamed from: d */
    private String f55274d;

    /* renamed from: e */
    private Long f55275e;

    /* renamed from: f */
    private final String f55276f;

    /* renamed from: g */
    private String f55277g;

    public C15291b(AbstractC15295f abstractC15295f) {
        this(abstractC15295f, UUID.randomUUID().toString());
    }

    public C15291b(AbstractC15295f abstractC15295f, String str) {
        this.f55272b = new ReentrantLock();
        this.f55273c = (AbstractC15295f) C15207aa.m9283a(abstractC15295f);
        this.f55276f = (String) C15207aa.m9283a(str);
    }

    /* renamed from: a */
    private AbstractC15295f m9158a() {
        this.f55272b.lock();
        try {
            return this.f55273c;
        } finally {
            this.f55272b.unlock();
        }
    }

    /* renamed from: b */
    private String m9157b() {
        this.f55272b.lock();
        try {
            return this.f55274d;
        } finally {
            this.f55272b.unlock();
        }
    }

    /* renamed from: c */
    private Long m9156c() {
        this.f55272b.lock();
        try {
            return this.f55275e;
        } finally {
            this.f55272b.unlock();
        }
    }

    /* renamed from: d */
    private String m9155d() {
        this.f55272b.lock();
        try {
            return this.f55276f;
        } finally {
            this.f55272b.unlock();
        }
    }

    /* renamed from: e */
    private String m9154e() {
        this.f55272b.lock();
        try {
            return this.f55277g;
        } finally {
            this.f55272b.unlock();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C15291b) {
            return m9155d().equals(((C15291b) obj).m9155d());
        }
        return false;
    }

    public final int hashCode() {
        return m9155d().hashCode();
    }

    public final String toString() {
        return C15255y.m9206a(C15291b.class).m9204a("notificationCallback", m9158a()).m9204a("clientToken", m9157b()).m9204a("expiration", m9156c()).m9204a("id", m9155d()).m9204a("topicId", m9154e()).toString();
    }
}
