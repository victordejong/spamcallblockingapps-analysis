.class final Lcom/google/common/base/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/o;->a(Lcom/google/common/base/c;)Lcom/google/common/base/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/c;


# direct methods
.method constructor <init>(Lcom/google/common/base/c;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/google/common/base/o$1;->a:Lcom/google/common/base/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .line 1145
    new-instance v0, Lcom/google/common/base/o$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/o$1$1;-><init>(Lcom/google/common/base/o$1;Lcom/google/common/base/o;Ljava/lang/CharSequence;)V

    return-object v0
.end method
