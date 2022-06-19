.class public final Lcom/google/common/base/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/i$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/common/base/i$a$a;

.field private c:Lcom/google/common/base/i$a$a;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/google/common/base/i$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/i$a$a;-><init>(Lcom/google/common/base/i$1;)V

    iput-object v0, p0, Lcom/google/common/base/i$a;->b:Lcom/google/common/base/i$a$a;

    .line 146
    iput-object v0, p0, Lcom/google/common/base/i$a;->c:Lcom/google/common/base/i$a$a;

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/google/common/base/i$a;->d:Z

    .line 151
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/i$a;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/i$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/google/common/base/i$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/i$a$a;
    .locals 2

    .line 364
    new-instance v0, Lcom/google/common/base/i$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/i$a$a;-><init>(Lcom/google/common/base/i$1;)V

    .line 365
    iget-object v1, p0, Lcom/google/common/base/i$a;->c:Lcom/google/common/base/i$a$a;

    iput-object v0, v1, Lcom/google/common/base/i$a$a;->c:Lcom/google/common/base/i$a$a;

    iput-object v0, p0, Lcom/google/common/base/i$a;->c:Lcom/google/common/base/i$a$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Lcom/google/common/base/i$a;
    .locals 0

    .line 224
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/i$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/i$a;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/google/common/base/i$a;->a()Lcom/google/common/base/i$a$a;

    move-result-object v0

    .line 377
    iput-object p2, v0, Lcom/google/common/base/i$a$a;->b:Ljava/lang/Object;

    .line 378
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/common/base/i$a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 337
    iget-boolean v0, p0, Lcom/google/common/base/i$a;->d:Z

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/common/base/i$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    iget-object v2, p0, Lcom/google/common/base/i$a;->b:Lcom/google/common/base/i$a$a;

    iget-object v2, v2, Lcom/google/common/base/i$a$a;->c:Lcom/google/common/base/i$a$a;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    .line 343
    iget-object v4, v2, Lcom/google/common/base/i$a$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 345
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v3, v2, Lcom/google/common/base/i$a$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 349
    iget-object v3, v2, Lcom/google/common/base/i$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    .line 351
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 353
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    .line 342
    :cond_3
    iget-object v2, v2, Lcom/google/common/base/i$a$a;->c:Lcom/google/common/base/i$a$a;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
