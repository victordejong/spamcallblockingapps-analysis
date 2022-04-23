package com.android.contacts.link;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private List<String> f1650a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private List<Integer> f1651b = new ArrayList();
    private List<Boolean> c = new ArrayList();
    private List<Integer> d = new ArrayList();

    public final String a() {
        String str;
        int i = 0;
        while (true) {
            if (i >= this.c.size()) {
                str = "#";
                break;
            } else if (this.c.get(i).booleanValue()) {
                str = a(i);
                break;
            } else {
                i++;
            }
        }
        return str;
    }

    public final String a(int i) {
        String str;
        if (i >= 0 && i < this.c.size()) {
            int size = this.f1651b.size();
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                int intValue = i3 + this.f1651b.get(i2).intValue();
                if (i >= i3 && i < intValue) {
                    str = this.f1650a.get(i2);
                    break;
                }
                i2++;
                i3 = intValue;
            }
        }
        str = "#";
        return str;
    }

    public final void a(int i, boolean z) {
        if (i >= 0 && i < this.c.size()) {
            this.c.remove(i);
            this.c.add(i, Boolean.valueOf(z));
            if (this.f1651b.size() > 0) {
                this.d.clear();
                int i2 = 0;
                for (Integer num : this.f1651b) {
                    int intValue = i2 + num.intValue();
                    while (true) {
                        if (i2 >= intValue) {
                            break;
                        } else if (this.c.get(i2).booleanValue()) {
                            this.d.add(Integer.valueOf(i2));
                            break;
                        } else {
                            i2++;
                        }
                    }
                    i2 = intValue;
                }
            }
        }
    }

    public final boolean b(int i) {
        boolean z;
        if (i >= -1 && i < this.c.size()) {
            while (true) {
                i++;
                if (i >= this.c.size()) {
                    break;
                } else if (this.c.get(i).booleanValue()) {
                    Iterator<Integer> it = this.d.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().intValue() == i) {
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    public final String c(int i) {
        String str;
        if (i >= -1 && i < this.c.size()) {
            while (true) {
                i++;
                if (i >= this.c.size()) {
                    break;
                } else if (this.c.get(i).booleanValue()) {
                    str = a(i);
                    break;
                }
            }
        }
        str = null;
        return str;
    }
}
