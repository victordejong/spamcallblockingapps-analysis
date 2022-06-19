package com.truecaller.attestation.data;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018��2\u00020\u0001B\u001d\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\t\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/truecaller/attestation/data/AttestationRequestDto;", "", "", "statement", "Ljava/lang/String;", "getStatement", "()Ljava/lang/String;", "build", "getBuild", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "isDebug", "(Ljava/lang/String;Z)V", "attestation_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/attestation/data/AttestationRequestDto.class */
public final class AttestationRequestDto {
    private final String build;
    private final String statement;

    private AttestationRequestDto(String str, String str2) {
        this.statement = str;
        this.build = str2;
    }

    public /* synthetic */ AttestationRequestDto(String str, String str2, int i, f fVar) {
        this(str, (i & 2) != 0 ? null : str2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AttestationRequestDto(String str, boolean z) {
        this(str, z ? "com.truecaller.debug" : null);
        l.e(str, "statement");
    }

    public /* synthetic */ AttestationRequestDto(String str, boolean z, int i, f fVar) {
        this(str, (i & 2) != 0 ? false : z);
    }

    public final String getBuild() {
        return this.build;
    }

    public final String getStatement() {
        return this.statement;
    }
}
