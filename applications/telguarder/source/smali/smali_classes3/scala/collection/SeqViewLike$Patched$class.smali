.class public abstract Lscala/collection/SeqViewLike$Patched$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Patched;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Patched;I)Ljava/lang/Object;
    .locals 2

    .line 174
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->from()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/SeqViewLike;->lengthCompare(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->from()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 175
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 176
    :cond_1
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$plen()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->patch()Lscala/collection/GenSeq;

    move-result-object p0

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Lscala/collection/GenSeq;->apply(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 177
    :cond_2
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$plen()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->replaced()I

    move-result p0

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static iterator(Lscala/collection/SeqViewLike$Patched;)Lscala/collection/Iterator;
    .locals 3

    .line 166
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->from()I

    move-result v1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->patch()Lscala/collection/GenSeq;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/GenSeq;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->replaced()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lscala/collection/Iterator;->patch(ILscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/SeqViewLike$Patched;)I
    .locals 4

    .line 168
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->length()I

    move-result v0

    .line 169
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->from()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lscala/math/package$;->min(II)I

    move-result v1

    .line 170
    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sub-int/2addr v0, v1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->replaced()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lscala/math/package$;->max(II)I

    move-result v0

    .line 171
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->scala$collection$SeqViewLike$Patched$$plen()I

    move-result p0

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public static scala$collection$SeqViewLike$Patched$$plen(Lscala/collection/SeqViewLike$Patched;)I
    .locals 0

    .line 165
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Patched;->patch()Lscala/collection/GenSeq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/GenSeq;->length()I

    move-result p0

    return p0
.end method

.method public static final viewIdentifier(Lscala/collection/SeqViewLike$Patched;)Ljava/lang/String;
    .locals 0

    const-string p0, "P"

    return-object p0
.end method
