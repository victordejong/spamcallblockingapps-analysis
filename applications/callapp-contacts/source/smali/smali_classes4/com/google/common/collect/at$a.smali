.class final Lcom/google/common/collect/at$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/google/common/collect/at$a;->a:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;Lcom/google/common/collect/at$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/google/common/collect/at$a;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method
