package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/StateSet.class */
public class StateSet {

    /* renamed from: a */
    int f2736a = -1;

    /* renamed from: b */
    int f2737b = -1;

    /* renamed from: c */
    int f2738c = -1;

    /* renamed from: d */
    private SparseArray<State> f2739d = new SparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/StateSet$State.class */
    public static class State {

        /* renamed from: a */
        int f2740a;

        /* renamed from: b */
        ArrayList<Variant> f2741b = new ArrayList<>();

        /* renamed from: c */
        int f2742c;

        public State(Context context, XmlPullParser xmlPullParser) {
            this.f2742c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0178R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.State_android_id) {
                    this.f2740a = obtainStyledAttributes.getResourceId(index, this.f2740a);
                } else if (index == C0178R.styleable.State_constraints) {
                    this.f2742c = obtainStyledAttributes.getResourceId(index, this.f2742c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f2742c);
                    context.getResources().getResourceName(this.f2742c);
                    "layout".equals(resourceTypeName);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m19958a(Variant variant) {
            this.f2741b.add(variant);
        }

        /* renamed from: b */
        public int m19957b(float f, float f2) {
            for (int i = 0; i < this.f2741b.size(); i++) {
                if (this.f2741b.get(i).m19956a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/StateSet$Variant.class */
    public static class Variant {

        /* renamed from: a */
        float f2743a;

        /* renamed from: b */
        float f2744b;

        /* renamed from: c */
        float f2745c;

        /* renamed from: d */
        float f2746d;

        /* renamed from: e */
        int f2747e;

        public Variant(Context context, XmlPullParser xmlPullParser) {
            this.f2743a = Float.NaN;
            this.f2744b = Float.NaN;
            this.f2745c = Float.NaN;
            this.f2746d = Float.NaN;
            this.f2747e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0178R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.Variant_constraints) {
                    this.f2747e = obtainStyledAttributes.getResourceId(index, this.f2747e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f2747e);
                    context.getResources().getResourceName(this.f2747e);
                    "layout".equals(resourceTypeName);
                } else if (index == C0178R.styleable.Variant_region_heightLessThan) {
                    this.f2746d = obtainStyledAttributes.getDimension(index, this.f2746d);
                } else if (index == C0178R.styleable.Variant_region_heightMoreThan) {
                    this.f2744b = obtainStyledAttributes.getDimension(index, this.f2744b);
                } else if (index == C0178R.styleable.Variant_region_widthLessThan) {
                    this.f2745c = obtainStyledAttributes.getDimension(index, this.f2745c);
                } else if (index == C0178R.styleable.Variant_region_widthMoreThan) {
                    this.f2743a = obtainStyledAttributes.getDimension(index, this.f2743a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        boolean m19956a(float f, float f2) {
            if (!Float.isNaN(this.f2743a) && f < this.f2743a) {
                return false;
            }
            if (!Float.isNaN(this.f2744b) && f2 < this.f2744b) {
                return false;
            }
            if (Float.isNaN(this.f2745c) || f <= this.f2745c) {
                return Float.isNaN(this.f2746d) || f2 <= this.f2746d;
            }
            return false;
        }
    }

    public StateSet(Context context, XmlPullParser xmlPullParser) {
        new SparseArray();
        m19961b(context, xmlPullParser);
    }

    /* renamed from: b */
    private void m19961b(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0178R.styleable.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0178R.styleable.StateSet_defaultState) {
                this.f2736a = obtainStyledAttributes.getResourceId(index, this.f2736a);
            }
        }
        obtainStyledAttributes.recycle();
        State state = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                    state = state;
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    char c = 65535;
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    state = state;
                    if (c != 0) {
                        state = state;
                        if (c != 1) {
                            if (c == 2) {
                                state = new State(context, xmlPullParser);
                                this.f2739d.put(state.f2740a, state);
                            } else if (c != 3) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                state = state;
                            } else {
                                Variant variant = new Variant(context, xmlPullParser);
                                state = state;
                                if (state != null) {
                                    state.m19958a(variant);
                                    state = state;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    state = state;
                } else {
                    state = state;
                    if ("StateSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public int m19962a(int i, int i2, float f, float f2) {
        State state = this.f2739d.get(i2);
        if (state == null) {
            return i2;
        }
        if (f != -1.0f && f2 != -1.0f) {
            Variant variant = null;
            Iterator<Variant> it = state.f2741b.iterator();
            while (it.hasNext()) {
                Variant next = it.next();
                if (next.m19956a(f, f2)) {
                    if (i == next.f2747e) {
                        return i;
                    }
                    variant = next;
                }
            }
            return variant != null ? variant.f2747e : state.f2742c;
        } else if (state.f2742c == i) {
            return i;
        } else {
            Iterator<Variant> it2 = state.f2741b.iterator();
            while (it2.hasNext()) {
                if (i == it2.next().f2747e) {
                    return i;
                }
            }
            return state.f2742c;
        }
    }

    /* renamed from: c */
    public int m19960c(int i, int i2, int i3) {
        return m19959d(-1, i, i2, i3);
    }

    /* renamed from: d */
    public int m19959d(int i, int i2, float f, float f2) {
        int b;
        if (i == i2) {
            State valueAt = i2 == -1 ? this.f2739d.valueAt(0) : this.f2739d.get(this.f2737b);
            if (valueAt == null) {
                return -1;
            }
            if ((this.f2738c == -1 || !valueAt.f2741b.get(i).m19956a(f, f2)) && i != (b = valueAt.m19957b(f, f2))) {
                return b == -1 ? valueAt.f2742c : valueAt.f2741b.get(b).f2747e;
            }
            return i;
        }
        State state = this.f2739d.get(i2);
        if (state == null) {
            return -1;
        }
        int b2 = state.m19957b(f, f2);
        return b2 == -1 ? state.f2742c : state.f2741b.get(b2).f2747e;
    }
}
