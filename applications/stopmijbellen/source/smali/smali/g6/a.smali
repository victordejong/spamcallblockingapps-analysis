.class public Lg6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lg6/a;


# instance fields
.field public final a:Lg6/b;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg6/a;->b:Z

    .line 3
    const-class v0, Lg6/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lg6/b;->a:Lg6/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lg6/b;

    invoke-direct {v1}, Lg6/b;-><init>()V

    sput-object v1, Lg6/b;->a:Lg6/b;

    .line 6
    :cond_0
    sget-object v1, Lg6/b;->a:Lg6/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 7
    iput-object v1, p0, Lg6/a;->a:Lg6/b;

    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method

.method public static b()Lg6/a;
    .locals 2

    .line 1
    sget-object v0, Lg6/a;->c:Lg6/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lg6/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lg6/a;->c:Lg6/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lg6/a;

    invoke-direct {v1}, Lg6/a;-><init>()V

    sput-object v1, Lg6/a;->c:Lg6/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lg6/a;->c:Lg6/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lg6/a;->b:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lg6/a;->a:Lg6/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg6/a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebasePerformance"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg6/a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg6/a;->a:Lg6/b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "FirebasePerformance"

    .line 3
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg6/a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebasePerformance"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg6/a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg6/a;->a:Lg6/b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "FirebasePerformance"

    .line 3
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
