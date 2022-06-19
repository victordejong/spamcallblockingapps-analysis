.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/i;


# static fields
.field public static final synthetic zza:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/firebase/components/b;

    const-class v2, Lcom/google/firebase/analytics/connector/a;

    .line 1
    invoke-static {v2}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/b;

    .line 2
    invoke-static {v3}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    .line 3
    invoke-static {v3}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/b/d;

    .line 4
    invoke-static {v3}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/analytics/connector/internal/a;->a:Lcom/google/firebase/components/h;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    .line 1254
    invoke-virtual {v2, v0}, Lcom/google/firebase/components/b$a;->a(I)Lcom/google/firebase/components/b$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->a()Lcom/google/firebase/components/b;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "fire-analytics"

    const-string v2, "18.0.3"

    .line 8
    invoke-static {v0, v2}, Lcom/google/firebase/f/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
