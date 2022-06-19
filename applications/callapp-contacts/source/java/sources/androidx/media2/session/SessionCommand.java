package androidx.media2.session;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.p036e.C0827a;
import androidx.versionedparcelable.AbstractC2922c;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.sinch.verification.core.internal.error.ApiErrorData;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommand.class */
public final class SessionCommand implements AbstractC2922c {

    /* renamed from: a */
    static final SparseArray<List<Integer>> f8748a;

    /* renamed from: b */
    static final SparseArray<List<Integer>> f8749b;

    /* renamed from: c */
    static final SparseArray<List<Integer>> f8750c;

    /* renamed from: d */
    static final SparseArray<List<Integer>> f8751d;

    /* renamed from: e */
    static final SparseArray<List<Integer>> f8752e;

    /* renamed from: f */
    int f8753f;

    /* renamed from: g */
    String f8754g;

    /* renamed from: h */
    Bundle f8755h;

    static {
        SparseArray<List<Integer>> sparseArray = new SparseArray<>();
        f8748a = sparseArray;
        SparseArray<List<Integer>> sparseArray2 = new SparseArray<>();
        f8749b = sparseArray2;
        sparseArray.put(1, Arrays.asList(10000, 10001, 10002, 10003, 10004, 11000, 11001, 11002));
        sparseArray2.put(1, Arrays.asList(10005, 10006, 10007, 10008, 10009, 10010, 10011, 10012, 10013, 10014, 10015, 10016, 10017, 10018));
        sparseArray2.put(2, Collections.singletonList(10019));
        SparseArray<List<Integer>> sparseArray3 = new SparseArray<>();
        f8750c = sparseArray3;
        sparseArray3.put(1, Arrays.asList(30000, 30001));
        SparseArray<List<Integer>> sparseArray4 = new SparseArray<>();
        f8751d = sparseArray4;
        sparseArray4.put(1, Arrays.asList(Integer.valueOf((int) PangleAdapterConfiguration.CONTENT_TYPE_ERROR), 40001, 40002, Integer.valueOf((int) ApiErrorData.ErrorCodes.BadRequest.InvalidRequest), 40010));
        sparseArray4.put(2, Collections.singletonList(40011));
        SparseArray<List<Integer>> sparseArray5 = new SparseArray<>();
        f8752e = sparseArray5;
        sparseArray5.put(1, Arrays.asList(Integer.valueOf((int) ApiErrorData.ErrorCodes.InternalServerError.InternalError), 50001, 50002, 50003, 50004, 50005, 50006));
    }

    public SessionCommand() {
    }

    public SessionCommand(int i) {
        if (i != 0) {
            this.f8753f = i;
            this.f8754g = null;
            this.f8755h = null;
            return;
        }
        throw new IllegalArgumentException("commandCode shouldn't be COMMAND_CODE_CUSTOM");
    }

    public SessionCommand(String str, Bundle bundle) {
        Objects.requireNonNull(str, "action shouldn't be null");
        this.f8753f = 0;
        this.f8754g = str;
        this.f8755h = bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionCommand)) {
            return false;
        }
        SessionCommand sessionCommand = (SessionCommand) obj;
        return this.f8753f == sessionCommand.f8753f && TextUtils.equals(this.f8754g, sessionCommand.f8754g);
    }

    public final int hashCode() {
        return C0827a.m44413a(this.f8754g, Integer.valueOf(this.f8753f));
    }
}
