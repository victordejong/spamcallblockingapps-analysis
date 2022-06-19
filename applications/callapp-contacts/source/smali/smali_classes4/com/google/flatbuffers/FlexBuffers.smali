.class public Lcom/google/flatbuffers/FlexBuffers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;
    }
.end annotation


# static fields
.field static final synthetic a:Z = true

.field private static final b:Lcom/google/flatbuffers/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 103
    new-instance v0, Lcom/google/flatbuffers/a;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    invoke-direct {v0, v2, v1}, Lcom/google/flatbuffers/a;-><init>([BI)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers;->b:Lcom/google/flatbuffers/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
