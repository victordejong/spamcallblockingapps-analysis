.class public final Lp9/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/y$a;
    }
.end annotation


# instance fields
.field public final a:Lp9/s;

.field public final b:Ljava/lang/String;

.field public final c:Lp9/r;

.field public final d:Lp9/a0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Lp9/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/y$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lp9/y$a;->a:Lp9/s;

    iput-object v0, p0, Lp9/y;->a:Lp9/s;

    .line 3
    iget-object v0, p1, Lp9/y$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lp9/y;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lp9/y$a;->c:Lp9/r$a;

    .line 5
    new-instance v1, Lp9/r;

    invoke-direct {v1, v0}, Lp9/r;-><init>(Lp9/r$a;)V

    .line 6
    iput-object v1, p0, Lp9/y;->c:Lp9/r;

    .line 7
    iget-object v0, p1, Lp9/y$a;->d:Lp9/a0;

    iput-object v0, p0, Lp9/y;->d:Lp9/a0;

    .line 8
    iget-object p1, p1, Lp9/y$a;->e:Ljava/util/Map;

    sget-object v0, Lq9/c;->a:[B

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 12
    :goto_0
    iput-object p1, p0, Lp9/y;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lp9/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/y;->f:Lp9/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lp9/y;->c:Lp9/r;

    invoke-static {v0}, Lp9/d;->a(Lp9/r;)Lp9/d;

    move-result-object v0

    iput-object v0, p0, Lp9/y;->f:Lp9/d;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Request{method="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp9/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp9/y;->a:Lp9/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp9/y;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
