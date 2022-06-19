.class final Lcom/google/common/base/h$1;
.super Lcom/google/common/base/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/common/base/h;


# direct methods
.method constructor <init>(Lcom/google/common/base/h;Lcom/google/common/base/h;Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/google/common/base/h$1;->b:Lcom/google/common/base/h;

    iput-object p3, p0, Lcom/google/common/base/h$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/common/base/h;-><init>(Lcom/google/common/base/h;Lcom/google/common/base/h$1;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/google/common/base/h$1;->a:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/h$1;->b:Lcom/google/common/base/h;

    invoke-virtual {v0, p1}, Lcom/google/common/base/h;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
