package org.tensorflow.lite;

import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.tensorflow.lite.nnapi.NnApiDelegate;
import p646n.p649b.p650a.AbstractC15202b;
import p646n.p649b.p650a.C15203c;
/* loaded from: classes3-dex2jar.jar:org/tensorflow/lite/NativeInterpreterWrapper.class */
public final class NativeInterpreterWrapper implements AutoCloseable {

    /* renamed from: a */
    public long f33440a;

    /* renamed from: b */
    public long f33441b;

    /* renamed from: c */
    public long f33442c;

    /* renamed from: d */
    public ByteBuffer f33443d;

    /* renamed from: e */
    public Tensor[] f33444e;

    /* renamed from: f */
    public Tensor[] f33445f;
    public long inferenceDurationNanoseconds = -1;

    /* renamed from: g */
    public boolean f33446g = false;

    /* renamed from: h */
    public final List<AbstractC15202b> f33447h = new ArrayList();

    /* renamed from: i */
    public final List<AutoCloseable> f33448i = new ArrayList();

    public NativeInterpreterWrapper(String str, C15203c.C15204a aVar) {
        TensorFlowLite.m12a();
        long createErrorReporter = createErrorReporter(512);
        m37a(createErrorReporter, createModel(str, createErrorReporter), aVar);
    }

    public NativeInterpreterWrapper(ByteBuffer byteBuffer, C15203c.C15204a aVar) {
        TensorFlowLite.m12a();
        if (byteBuffer == null || (!(byteBuffer instanceof MappedByteBuffer) && (!byteBuffer.isDirect() || byteBuffer.order() != ByteOrder.nativeOrder()))) {
            throw new IllegalArgumentException("Model ByteBuffer should be either a MappedByteBuffer of the model file, or a direct ByteBuffer using ByteOrder.nativeOrder() which contains bytes of model content.");
        }
        this.f33443d = byteBuffer;
        long createErrorReporter = createErrorReporter(512);
        m37a(createErrorReporter, createModelWithBuffer(this.f33443d, createErrorReporter), aVar);
    }

    /* renamed from: a */
    public static AbstractC15202b m36a(List<AbstractC15202b> list) {
        try {
            Class<?> cls = Class.forName("org.tensorflow.lite.flex.FlexDelegate");
            Iterator<AbstractC15202b> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    return (AbstractC15202b) cls.getConstructor(new Class[0]).newInstance(new Object[0]);
                }
            } while (!cls.isInstance(it.next()));
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public static native long allocateTensors(long j, long j2);

    public static native void allowBufferHandleOutput(long j, boolean z);

    public static native void allowFp16PrecisionForFp32(long j, boolean z);

    public static native void applyDelegate(long j, long j2, long j3);

    public static native long createErrorReporter(int i);

    public static native long createInterpreter(long j, long j2, int i);

    public static native long createModel(String str, long j);

    public static native long createModelWithBuffer(ByteBuffer byteBuffer, long j);

    public static native void delete(long j, long j2, long j3);

    public static native int getInputCount(long j);

    public static native int getInputTensorIndex(long j, int i);

    public static native int getOutputCount(long j);

    public static native int getOutputTensorIndex(long j, int i);

    public static native boolean hasUnresolvedFlexOp(long j);

    public static native boolean resizeInput(long j, long j2, int i, int[] iArr, boolean z);

    public static native void run(long j, long j2);

    public static native void useXNNPACK(long j, long j2, boolean z, int i);

    /* renamed from: a */
    public Tensor m40a(int i) {
        if (i >= 0) {
            Tensor[] tensorArr = this.f33444e;
            if (i < tensorArr.length) {
                Tensor tensor = tensorArr[i];
                Tensor tensor2 = tensor;
                if (tensor == null) {
                    long j = this.f33441b;
                    tensor2 = Tensor.m31a(j, getInputTensorIndex(j, i));
                    tensorArr[i] = tensor2;
                }
                return tensor2;
            }
        }
        throw new IllegalArgumentException("Invalid input Tensor index: " + i);
    }

    /* renamed from: a */
    public void m39a(int i, int[] iArr) {
        m38a(i, iArr, false);
    }

    /* renamed from: a */
    public void m38a(int i, int[] iArr, boolean z) {
        if (resizeInput(this.f33441b, this.f33440a, i, iArr, z)) {
            this.f33446g = false;
            Tensor[] tensorArr = this.f33444e;
            if (tensorArr[i] != null) {
                tensorArr[i].m20e();
            }
        }
    }

    /* renamed from: a */
    public final void m37a(long j, long j2, C15203c.C15204a aVar) {
        C15203c.C15204a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new C15203c.C15204a();
        }
        this.f33440a = j;
        this.f33442c = j2;
        this.f33441b = createInterpreter(j2, j, aVar2.f33221a);
        this.f33444e = new Tensor[getInputCount(this.f33441b)];
        this.f33445f = new Tensor[getOutputCount(this.f33441b)];
        Boolean bool = aVar2.f33223c;
        if (bool != null) {
            allowFp16PrecisionForFp32(this.f33441b, bool.booleanValue());
        }
        Boolean bool2 = aVar2.f33224d;
        if (bool2 != null) {
            allowBufferHandleOutput(this.f33441b, bool2.booleanValue());
        }
        m35a(aVar2);
        Boolean bool3 = aVar2.f33225e;
        if (bool3 != null) {
            useXNNPACK(this.f33441b, j, bool3.booleanValue(), aVar2.f33221a);
        }
        allocateTensors(this.f33441b, j);
        this.f33446g = true;
    }

    /* renamed from: a */
    public final void m35a(C15203c.C15204a aVar) {
        AbstractC15202b a;
        boolean hasUnresolvedFlexOp = hasUnresolvedFlexOp(this.f33441b);
        if (hasUnresolvedFlexOp && (a = m36a(aVar.f33226f)) != null) {
            this.f33448i.add((AutoCloseable) a);
            applyDelegate(this.f33441b, this.f33440a, a.mo8a());
        }
        try {
            for (AbstractC15202b bVar : aVar.f33226f) {
                applyDelegate(this.f33441b, this.f33440a, bVar.mo8a());
                this.f33447h.add(bVar);
            }
            if (aVar.f33222b != null && aVar.f33222b.booleanValue()) {
                NnApiDelegate nnApiDelegate = new NnApiDelegate();
                this.f33448i.add(nnApiDelegate);
                applyDelegate(this.f33441b, this.f33440a, nnApiDelegate.mo8a());
            }
        } catch (IllegalArgumentException e) {
            if (hasUnresolvedFlexOp && !hasUnresolvedFlexOp(this.f33441b)) {
                PrintStream printStream = System.err;
                printStream.println("Ignoring failed delegate application: " + e);
                return;
            }
            throw e;
        }
    }

    /* renamed from: a */
    public void m34a(Object[] objArr, Map<Integer, Object> map) {
        this.inferenceDurationNanoseconds = -1L;
        if (objArr == null || objArr.length == 0) {
            throw new IllegalArgumentException("Input error: Inputs should not be null or empty.");
        } else if (map == null || map.isEmpty()) {
            throw new IllegalArgumentException("Input error: Outputs should not be null or empty.");
        } else {
            int i = 0;
            for (int i2 = 0; i2 < objArr.length; i2++) {
                int[] b = m40a(i2).m26b(objArr[i2]);
                if (b != null) {
                    m39a(i2, b);
                }
            }
            boolean z = !this.f33446g;
            if (z) {
                allocateTensors(this.f33441b, this.f33440a);
                this.f33446g = true;
            }
            for (int i3 = 0; i3 < objArr.length; i3++) {
                m40a(i3).m23c(objArr[i3]);
            }
            long nanoTime = System.nanoTime();
            run(this.f33441b, this.f33440a);
            long nanoTime2 = System.nanoTime();
            if (z) {
                while (true) {
                    Tensor[] tensorArr = this.f33445f;
                    if (i >= tensorArr.length) {
                        break;
                    }
                    if (tensorArr[i] != null) {
                        tensorArr[i].m20e();
                    }
                    i++;
                }
            }
            for (Map.Entry<Integer, Object> entry : map.entrySet()) {
                m33b(entry.getKey().intValue()).m30a(entry.getValue());
            }
            this.inferenceDurationNanoseconds = nanoTime2 - nanoTime;
        }
    }

    /* renamed from: b */
    public Tensor m33b(int i) {
        if (i >= 0) {
            Tensor[] tensorArr = this.f33445f;
            if (i < tensorArr.length) {
                Tensor tensor = tensorArr[i];
                Tensor tensor2 = tensor;
                if (tensor == null) {
                    long j = this.f33441b;
                    tensor2 = Tensor.m31a(j, getOutputTensorIndex(j, i));
                    tensorArr[i] = tensor2;
                }
                return tensor2;
            }
        }
        throw new IllegalArgumentException("Invalid output Tensor index: " + i);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        int i = 0;
        while (true) {
            Tensor[] tensorArr = this.f33444e;
            if (i >= tensorArr.length) {
                break;
            }
            if (tensorArr[i] != null) {
                tensorArr[i].m27b();
                this.f33444e[i] = null;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            Tensor[] tensorArr2 = this.f33445f;
            if (i2 >= tensorArr2.length) {
                break;
            }
            if (tensorArr2[i2] != null) {
                tensorArr2[i2].m27b();
                this.f33445f[i2] = null;
            }
            i2++;
        }
        delete(this.f33440a, this.f33442c, this.f33441b);
        this.f33440a = 0L;
        this.f33442c = 0L;
        this.f33441b = 0L;
        this.f33443d = null;
        this.f33446g = false;
        this.f33447h.clear();
        for (AutoCloseable autoCloseable : this.f33448i) {
            try {
                autoCloseable.close();
            } catch (Exception e) {
                PrintStream printStream = System.err;
                printStream.println("Failed to close flex delegate: " + e);
            }
        }
        this.f33448i.clear();
    }
}
