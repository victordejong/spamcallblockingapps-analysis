.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$a;,
        Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static determineFactory(Lcom/google/android/datatransport/g;)Lcom/google/android/datatransport/g;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$b;

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$b;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "test"

    const-class v1, Ljava/lang/String;

    const-string v1, "json"

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/google/android/datatransport/b;->a(Ljava/lang/String;)Lcom/google/android/datatransport/b;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/messaging/x;->a:Lcom/google/android/datatransport/e;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/datatransport/g;->a(Ljava/lang/String;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/e;)Lcom/google/android/datatransport/f;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$b;

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$b;-><init>()V

    return-object p0
.end method

.method static final synthetic lambda$getComponents$0$FirebaseMessagingRegistrar(Lcom/google/firebase/components/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lcom/google/firebase/b;

    .line 2
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/b;

    const-class v0, Lcom/google/firebase/iid/a/a;

    .line 3
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/iid/a/a;

    const-class v0, Lcom/google/firebase/f/i;

    .line 4
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->c(Ljava/lang/Class;)Lcom/google/firebase/d/b;

    move-result-object v3

    const-class v0, Lcom/google/firebase/c/f;

    .line 5
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->c(Ljava/lang/Class;)Lcom/google/firebase/d/b;

    move-result-object v4

    const-class v0, Lcom/google/firebase/installations/h;

    .line 6
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/installations/h;

    const-class v0, Lcom/google/android/datatransport/g;

    .line 7
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/g;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->determineFactory(Lcom/google/android/datatransport/g;)Lcom/google/android/datatransport/g;

    move-result-object v6

    const-class v0, Lcom/google/firebase/b/d;

    .line 8
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/firebase/b/d;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/a/a;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;Lcom/google/firebase/installations/h;Lcom/google/android/datatransport/g;Lcom/google/firebase/b/d;)V

    return-object v8
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

    new-array v0, v0, [Lcom/google/firebase/components/b;

    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 1
    invoke-static {v1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/b;

    .line 2
    invoke-static {v2}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/iid/a/a;

    .line 3
    invoke-static {v2}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/f/i;

    .line 4
    invoke-static {v2}, Lcom/google/firebase/components/r;->d(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/c/f;

    .line 5
    invoke-static {v2}, Lcom/google/firebase/components/r;->d(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/android/datatransport/g;

    .line 6
    invoke-static {v2}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/installations/h;

    .line 7
    invoke-static {v2}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/b/d;

    .line 8
    invoke-static {v2}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/messaging/w;->a:Lcom/google/firebase/components/h;

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 1249
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(I)Lcom/google/firebase/components/b$a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/components/b$a;->a()Lcom/google/firebase/components/b;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "fire-fcm"

    const-string v3, "20.1.7_1p"

    .line 12
    invoke-static {v1, v3}, Lcom/google/firebase/f/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v1

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
