package com.callapp.contacts.framework.util;

import b.a;
import com.callapp.contacts.manager.task.Task;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.c.f;
import kotlinx.coroutines.bk;
import kotlinx.coroutines.bv;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/util/MultiTaskRunner.class */
public class MultiTaskRunner {

    /* renamed from: a  reason: collision with root package name */
    public String f14416a = "";

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList<Runnable> f14417b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private List<bv> f14418c;

    /* renamed from: d  reason: collision with root package name */
    private final f f14419d;

    public MultiTaskRunner() {
        bk bkVar;
        a.C0124a aVar = a.f6247a;
        bkVar = a.f6248b;
        this.f14419d = bkVar;
    }

    public MultiTaskRunner(f fVar) {
        this.f14419d = fVar;
    }

    public final void a() {
        if (!this.f14417b.isEmpty()) {
            a.C0124a aVar = a.f6247a;
            a.C0124a.b(this.f14419d, this.f14417b);
        }
    }

    public final void a(Task task) {
        this.f14417b.add(task.setMetaData(this.f14416a));
    }

    public final void b() {
        if (!this.f14417b.isEmpty()) {
            Iterator<Runnable> it2 = this.f14417b.iterator();
            while (it2.hasNext()) {
                it2.next().run();
            }
        }
    }

    public final void c() {
        if (!this.f14417b.isEmpty()) {
            a.C0124a aVar = a.f6247a;
            this.f14418c = a.C0124a.a(this.f14419d, this.f14417b);
        }
    }

    public final void d() {
        if (CollectionUtils.b(this.f14418c)) {
            for (bv bvVar : this.f14418c) {
                bvVar.a((CancellationException) null);
            }
        }
        this.f14418c = null;
    }
}
