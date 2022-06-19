.class public Li6/a;
.super Li6/e;
.source "SourceFile"


# static fields
.field public static final b:Lg6/a;


# instance fields
.field public final a:Lo6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v0

    sput-object v0, Li6/a;->b:Lg6/a;

    return-void
.end method

.method public constructor <init>(Lo6/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li6/e;-><init>()V

    .line 2
    iput-object p1, p0, Li6/a;->a:Lo6/c;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Li6/a;->a:Lo6/c;

    const/4 v1, 0x1

    const-string v2, "FirebasePerformance"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Li6/a;->b:Lg6/a;

    .line 3
    iget-boolean v4, v0, Lg6/a;->b:Z

    if-eqz v4, :cond_0

    .line 4
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ApplicationInfo is null"

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lo6/c;->J()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Li6/a;->b:Lg6/a;

    .line 8
    iget-boolean v4, v0, Lg6/a;->b:Z

    if-eqz v4, :cond_0

    .line 9
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GoogleAppId is null"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Li6/a;->a:Lo6/c;

    invoke-virtual {v0}, Lo6/c;->H()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    sget-object v0, Li6/a;->b:Lg6/a;

    .line 13
    iget-boolean v4, v0, Lg6/a;->b:Z

    if-eqz v4, :cond_0

    .line 14
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AppInstanceId is null"

    .line 15
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Li6/a;->a:Lo6/c;

    invoke-virtual {v0}, Lo6/c;->I()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    sget-object v0, Li6/a;->b:Lg6/a;

    .line 18
    iget-boolean v4, v0, Lg6/a;->b:Z

    if-eqz v4, :cond_0

    .line 19
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ApplicationProcessState is null"

    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21
    :cond_4
    iget-object v0, p0, Li6/a;->a:Lo6/c;

    invoke-virtual {v0}, Lo6/c;->G()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Li6/a;->a:Lo6/c;

    invoke-virtual {v0}, Lo6/c;->E()Lo6/a;

    move-result-object v0

    invoke-virtual {v0}, Lo6/a;->D()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    sget-object v0, Li6/a;->b:Lg6/a;

    .line 24
    iget-boolean v4, v0, Lg6/a;->b:Z

    if-eqz v4, :cond_0

    .line 25
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AndroidAppInfo.packageName is null"

    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    :cond_5
    iget-object v0, p0, Li6/a;->a:Lo6/c;

    invoke-virtual {v0}, Lo6/c;->E()Lo6/a;

    move-result-object v0

    invoke-virtual {v0}, Lo6/a;->E()Z

    move-result v0

    if-nez v0, :cond_6

    .line 28
    sget-object v0, Li6/a;->b:Lg6/a;

    .line 29
    iget-boolean v4, v0, Lg6/a;->b:Z

    if-eqz v4, :cond_0

    .line 30
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AndroidAppInfo.sdkVersion is null"

    .line 31
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_8

    .line 32
    sget-object v0, Li6/a;->b:Lg6/a;

    .line 33
    iget-boolean v1, v0, Lg6/a;->b:Z

    if-eqz v1, :cond_7

    .line 34
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ApplicationInfo is invalid"

    .line 35
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3

    :cond_8
    return v1
.end method
