.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Lz4/c;

    .line 1
    const-class v2, La5/e;

    .line 2
    invoke-static {v2}, Lz4/c;->a(Ljava/lang/Class;)Lz4/c$b;

    move-result-object v2

    const-class v3, Lt4/c;

    .line 3
    new-instance v4, Lz4/m;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v2, v4}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v3, Lx5/e;

    .line 5
    new-instance v4, Lz4/m;

    invoke-direct {v4, v3, v5, v6}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v2, v4}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v3, Lb5/a;

    .line 7
    new-instance v4, Lz4/m;

    invoke-direct {v4, v3, v6, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v2, v4}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v3, Lx4/a;

    .line 9
    new-instance v4, Lz4/m;

    invoke-direct {v4, v3, v6, v0}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v2, v4}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    new-instance v0, Lz4/a;

    invoke-direct {v0, p0, v5}, Lz4/a;-><init>(Ljava/lang/Object;I)V

    .line 11
    iput-object v0, v2, Lz4/c$b;->e:Lz4/f;

    .line 12
    invoke-virtual {v2}, Lz4/c$b;->c()Lz4/c$b;

    .line 13
    invoke-virtual {v2}, Lz4/c$b;->b()Lz4/c;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "fire-cls"

    const-string v2, "18.1.0"

    .line 14
    invoke-static {v0, v2}, Lp6/f;->a(Ljava/lang/String;Ljava/lang/String;)Lz4/c;

    move-result-object v0

    aput-object v0, v1, v5

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
