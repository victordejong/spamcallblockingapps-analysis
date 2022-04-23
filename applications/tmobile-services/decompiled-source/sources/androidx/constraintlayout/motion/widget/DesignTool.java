package androidx.constraintlayout.motion.widget;

import android.util.Pair;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/DesignTool.class */
public class DesignTool implements ProxyInterface {

    /* renamed from: a */
    static final HashMap<Pair<Integer, Integer>, String> f1665a = new HashMap<>();

    /* renamed from: b */
    static final HashMap<String, String> f1666b = new HashMap<>();

    static {
        f1665a.put(Pair.create(4, 4), "layout_constraintBottom_toBottomOf");
        f1665a.put(Pair.create(4, 3), "layout_constraintBottom_toTopOf");
        f1665a.put(Pair.create(3, 4), "layout_constraintTop_toBottomOf");
        f1665a.put(Pair.create(3, 3), "layout_constraintTop_toTopOf");
        f1665a.put(Pair.create(6, 6), "layout_constraintStart_toStartOf");
        f1665a.put(Pair.create(6, 7), "layout_constraintStart_toEndOf");
        f1665a.put(Pair.create(7, 6), "layout_constraintEnd_toStartOf");
        f1665a.put(Pair.create(7, 7), "layout_constraintEnd_toEndOf");
        f1665a.put(Pair.create(1, 1), "layout_constraintLeft_toLeftOf");
        f1665a.put(Pair.create(1, 2), "layout_constraintLeft_toRightOf");
        f1665a.put(Pair.create(2, 2), "layout_constraintRight_toRightOf");
        f1665a.put(Pair.create(2, 1), "layout_constraintRight_toLeftOf");
        f1665a.put(Pair.create(5, 5), "layout_constraintBaseline_toBaselineOf");
        f1666b.put("layout_constraintBottom_toBottomOf", "layout_marginBottom");
        f1666b.put("layout_constraintBottom_toTopOf", "layout_marginBottom");
        f1666b.put("layout_constraintTop_toBottomOf", "layout_marginTop");
        f1666b.put("layout_constraintTop_toTopOf", "layout_marginTop");
        f1666b.put("layout_constraintStart_toStartOf", "layout_marginStart");
        f1666b.put("layout_constraintStart_toEndOf", "layout_marginStart");
        f1666b.put("layout_constraintEnd_toStartOf", "layout_marginEnd");
        f1666b.put("layout_constraintEnd_toEndOf", "layout_marginEnd");
        f1666b.put("layout_constraintLeft_toLeftOf", "layout_marginLeft");
        f1666b.put("layout_constraintLeft_toRightOf", "layout_marginLeft");
        f1666b.put("layout_constraintRight_toRightOf", "layout_marginRight");
        f1666b.put("layout_constraintRight_toLeftOf", "layout_marginRight");
    }

    public DesignTool(MotionLayout motionLayout) {
    }
}
