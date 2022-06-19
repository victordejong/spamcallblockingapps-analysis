.class public final Lcom/google/common/base/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/o$a;,
        Lcom/google/common/base/o$b;
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/base/c;

.field final b:Z

.field final c:I

.field private final d:Lcom/google/common/base/o$b;


# direct methods
.method private constructor <init>(Lcom/google/common/base/o$b;)V
    .locals 3

    .line 107
    invoke-static {}, Lcom/google/common/base/c;->a()Lcom/google/common/base/c;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$b;ZLcom/google/common/base/c;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/o$b;ZLcom/google/common/base/c;I)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/common/base/o;->d:Lcom/google/common/base/o$b;

    .line 112
    iput-boolean p2, p0, Lcom/google/common/base/o;->b:Z

    .line 113
    iput-object p3, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/c;

    .line 114
    iput p4, p0, Lcom/google/common/base/o;->c:I

    return-void
.end method

.method public static a(Lcom/google/common/base/c;)Lcom/google/common/base/o;
    .locals 2

    .line 139
    invoke-static {p0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/google/common/base/o;

    new-instance v1, Lcom/google/common/base/o$1;

    invoke-direct {v1, p0}, Lcom/google/common/base/o$1;-><init>(Lcom/google/common/base/c;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$b;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 412
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget-object v0, p0, Lcom/google/common/base/o;->d:Lcom/google/common/base/o$b;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/o$b;->a(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
