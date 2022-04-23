package com.callapp.contacts.recorder.encoder;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/encoder/DynamicNormalizerFactroy.class */
public class DynamicNormalizerFactroy {
    public static DynamicNormalizer getDynamicNormalizer(int i) {
        if (i == 1) {
            return new DynamicNormalizer(400, 3, 5.0E-4d, 0.001d, 2.0E-5d, 0.001d, Double.POSITIVE_INFINITY);
        }
        if (i == 2) {
            return new DynamicNormalizer(400, 3, 5.0E-4d, 2.0E-4d, 2.0E-5d, 4.0E-4d, Double.POSITIVE_INFINITY);
        }
        if (i == 3) {
            return new DynamicNormalizer(400, 3, 1.0E-4d, 2.0E-4d, 4.0E-6d, 0.001d, Double.POSITIVE_INFINITY);
        }
        if (i != 4) {
            return null;
        }
        return new DynamicNormalizer(400, 3, 5.0E-4d, 0.005d, 2.0E-5d, 0.005d, Double.POSITIVE_INFINITY);
    }
}
