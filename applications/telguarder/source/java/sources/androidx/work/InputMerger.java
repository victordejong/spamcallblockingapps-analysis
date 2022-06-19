package androidx.work;

import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/InputMerger.class */
public abstract class InputMerger {
    private static final String TAG = Logger.tagWithPrefix("InputMerger");

    public static InputMerger fromClassName(String str) {
        try {
            return (InputMerger) Class.forName(str).newInstance();
        } catch (Exception e) {
            Logger logger = Logger.get();
            String str2 = TAG;
            logger.error(str2, "Trouble instantiating + " + str, e);
            return null;
        }
    }

    public abstract Data merge(List<Data> list);
}
