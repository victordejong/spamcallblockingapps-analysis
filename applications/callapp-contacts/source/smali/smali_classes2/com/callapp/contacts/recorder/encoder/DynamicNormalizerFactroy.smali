.class public Lcom/callapp/contacts/recorder/encoder/DynamicNormalizerFactroy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDynamicNormalizer(I)Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;
    .locals 27

    move/from16 v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    const/16 v2, 0x190

    const/4 v3, 0x3

    const-wide v4, 0x3f40624dd2f1a9fcL    # 5.0E-4

    const-wide v6, 0x3f747ae147ae147bL    # 0.005

    const-wide v8, 0x3ef4f8b588e368f1L    # 2.0E-5

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;-><init>(IIDDDDD)V

    return-object v0

    .line 27
    :cond_1
    new-instance v0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    const/16 v15, 0x190

    const/16 v16, 0x3

    const-wide v17, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const-wide v19, 0x3f2a36e2eb1c432dL    # 2.0E-4

    const-wide v21, 0x3ed0c6f7a0b5ed8dL    # 4.0E-6

    const-wide v23, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide/high16 v25, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;-><init>(IIDDDDD)V

    return-object v0

    .line 18
    :cond_2
    new-instance v0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    const/16 v2, 0x190

    const/4 v3, 0x3

    const-wide v4, 0x3f40624dd2f1a9fcL    # 5.0E-4

    const-wide v6, 0x3f2a36e2eb1c432dL    # 2.0E-4

    const-wide v8, 0x3ef4f8b588e368f1L    # 2.0E-5

    const-wide v10, 0x3f3a36e2eb1c432dL    # 4.0E-4

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;-><init>(IIDDDDD)V

    return-object v0

    .line 9
    :cond_3
    new-instance v0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    const/16 v15, 0x190

    const/16 v16, 0x3

    const-wide v17, 0x3f40624dd2f1a9fcL    # 5.0E-4

    const-wide v19, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v21, 0x3ef4f8b588e368f1L    # 2.0E-5

    const-wide v23, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide/high16 v25, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;-><init>(IIDDDDD)V

    return-object v0
.end method
