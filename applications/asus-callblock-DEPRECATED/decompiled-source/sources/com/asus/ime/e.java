package com.asus.ime;

import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/ime/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static int f2905a = 64;
    public List<d> c = new LinkedList();
    public int d = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f2906b = f2905a;

    public e() {
        a(d.f2903a);
        a(d.f2904b);
    }

    private void a(d dVar) {
        if (this.c.indexOf(dVar) == -1) {
            this.c.add(dVar);
        }
    }
}
