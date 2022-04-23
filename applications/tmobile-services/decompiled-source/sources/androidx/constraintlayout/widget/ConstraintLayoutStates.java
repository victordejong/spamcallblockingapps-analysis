package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayoutStates.class */
public class ConstraintLayoutStates {

    /* renamed from: a */
    private final ConstraintLayout f2599a;

    /* renamed from: b */
    ConstraintSet f2600b;

    /* renamed from: c */
    int f2601c = -1;

    /* renamed from: d */
    int f2602d = -1;

    /* renamed from: e */
    private SparseArray<State> f2603e = new SparseArray<>();

    /* renamed from: f */
    private SparseArray<ConstraintSet> f2604f = new SparseArray<>();

    /* renamed from: g */
    private ConstraintsChangedListener f2605g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayoutStates$State.class */
    public static class State {

        /* renamed from: a */
        int f2606a;

        /* renamed from: b */
        ArrayList<Variant> f2607b = new ArrayList<>();

        /* renamed from: c */
        int f2608c;

        /* renamed from: d */
        ConstraintSet f2609d;

        public State(Context context, XmlPullParser xmlPullParser) {
            this.f2608c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0178R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.State_android_id) {
                    this.f2606a = obtainStyledAttributes.getResourceId(index, this.f2606a);
                } else if (index == C0178R.styleable.State_constraints) {
                    this.f2608c = obtainStyledAttributes.getResourceId(index, this.f2608c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f2608c);
                    context.getResources().getResourceName(this.f2608c);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f2609d = constraintSet;
                        constraintSet.m20005i(context, this.f2608c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m20021a(Variant variant) {
            this.f2607b.add(variant);
        }

        /* renamed from: b */
        public int m20020b(float f, float f2) {
            for (int i = 0; i < this.f2607b.size(); i++) {
                if (this.f2607b.get(i).m20019a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayoutStates$Variant.class */
    public static class Variant {

        /* renamed from: a */
        float f2610a;

        /* renamed from: b */
        float f2611b;

        /* renamed from: c */
        float f2612c;

        /* renamed from: d */
        float f2613d;

        /* renamed from: e */
        int f2614e;

        /* renamed from: f */
        ConstraintSet f2615f;

        public Variant(Context context, XmlPullParser xmlPullParser) {
            this.f2610a = Float.NaN;
            this.f2611b = Float.NaN;
            this.f2612c = Float.NaN;
            this.f2613d = Float.NaN;
            this.f2614e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0178R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.Variant_constraints) {
                    this.f2614e = obtainStyledAttributes.getResourceId(index, this.f2614e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f2614e);
                    context.getResources().getResourceName(this.f2614e);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f2615f = constraintSet;
                        constraintSet.m20005i(context, this.f2614e);
                    }
                } else if (index == C0178R.styleable.Variant_region_heightLessThan) {
                    this.f2613d = obtainStyledAttributes.getDimension(index, this.f2613d);
                } else if (index == C0178R.styleable.Variant_region_heightMoreThan) {
                    this.f2611b = obtainStyledAttributes.getDimension(index, this.f2611b);
                } else if (index == C0178R.styleable.Variant_region_widthLessThan) {
                    this.f2612c = obtainStyledAttributes.getDimension(index, this.f2612c);
                } else if (index == C0178R.styleable.Variant_region_widthMoreThan) {
                    this.f2610a = obtainStyledAttributes.getDimension(index, this.f2610a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        boolean m20019a(float f, float f2) {
            if (!Float.isNaN(this.f2610a) && f < this.f2610a) {
                return false;
            }
            if (!Float.isNaN(this.f2611b) && f2 < this.f2611b) {
                return false;
            }
            if (Float.isNaN(this.f2612c) || f <= this.f2612c) {
                return Float.isNaN(this.f2613d) || f2 <= this.f2613d;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConstraintLayoutStates(Context context, ConstraintLayout constraintLayout, int i) {
        this.f2599a = constraintLayout;
        m20025a(context, i);
    }

    /* renamed from: a */
    private void m20025a(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        State state = null;
        try {
            int eventType = xml.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xml.getName();
                    state = state;
                } else if (eventType != 2) {
                    state = state;
                } else {
                    String name = xml.getName();
                    char c = 65535;
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c = 0;
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
                                state = new State(context, xml);
                                this.f2603e.put(state.f2606a, state);
                            } else if (c == 3) {
                                Variant variant = new Variant(context, xml);
                                state = state;
                                if (state != null) {
                                    state.m20021a(variant);
                                    state = state;
                                }
                            } else if (c != 4) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                state = state;
                            } else {
                                m20024b(context, xml);
                                state = state;
                            }
                        }
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m20024b(Context context, XmlPullParser xmlPullParser) {
        ConstraintSet constraintSet = new ConstraintSet();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (Name.MARK.equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), Name.MARK, context.getPackageName()) : -1;
                int i2 = identifier;
                if (identifier == -1) {
                    if (attributeValue == null || attributeValue.length() <= 1) {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                        i2 = identifier;
                    } else {
                        i2 = Integer.parseInt(attributeValue.substring(1));
                    }
                }
                constraintSet.m19990x(context, xmlPullParser);
                this.f2604f.put(i2, constraintSet);
                return;
            }
        }
    }

    /* renamed from: c */
    public void m20023c(ConstraintsChangedListener constraintsChangedListener) {
        this.f2605g = constraintsChangedListener;
    }

    /* renamed from: d */
    public void m20022d(int i, float f, float f2) {
        int b;
        int i2 = this.f2601c;
        if (i2 == i) {
            State valueAt = i == -1 ? this.f2603e.valueAt(0) : this.f2603e.get(i2);
            int i3 = this.f2602d;
            if ((i3 == -1 || !valueAt.f2607b.get(i3).m20019a(f, f2)) && this.f2602d != (b = valueAt.m20020b(f, f2))) {
                ConstraintSet constraintSet = b == -1 ? this.f2600b : valueAt.f2607b.get(b).f2615f;
                int i4 = b == -1 ? valueAt.f2608c : valueAt.f2607b.get(b).f2614e;
                if (constraintSet != null) {
                    this.f2602d = b;
                    ConstraintsChangedListener constraintsChangedListener = this.f2605g;
                    if (constraintsChangedListener != null) {
                        constraintsChangedListener.m19967b(-1, i4);
                    }
                    constraintSet.m20010d(this.f2599a);
                    ConstraintsChangedListener constraintsChangedListener2 = this.f2605g;
                    if (constraintsChangedListener2 != null) {
                        constraintsChangedListener2.m19968a(-1, i4);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        this.f2601c = i;
        State state = this.f2603e.get(i);
        int b2 = state.m20020b(f, f2);
        ConstraintSet constraintSet2 = b2 == -1 ? state.f2609d : state.f2607b.get(b2).f2615f;
        int i5 = b2 == -1 ? state.f2608c : state.f2607b.get(b2).f2614e;
        if (constraintSet2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f + ", " + f2);
            return;
        }
        this.f2602d = b2;
        ConstraintsChangedListener constraintsChangedListener3 = this.f2605g;
        if (constraintsChangedListener3 != null) {
            constraintsChangedListener3.m19967b(i, i5);
        }
        constraintSet2.m20010d(this.f2599a);
        ConstraintsChangedListener constraintsChangedListener4 = this.f2605g;
        if (constraintsChangedListener4 != null) {
            constraintsChangedListener4.m19968a(i, i5);
        }
    }
}
