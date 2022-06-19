.class public Lcom/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginClient$Result;,
        Lcom/facebook/login/LoginClient$Request;,
        Lcom/facebook/login/LoginClient$b;,
        Lcom/facebook/login/LoginClient$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[Lcom/facebook/login/LoginMethodHandler;

.field public b:I

.field public c:Landroidx/fragment/app/Fragment;

.field public d:Lcom/facebook/login/LoginClient$c;

.field public f:Lcom/facebook/login/LoginClient$b;

.field public g:Z

.field public h:Lcom/facebook/login/LoginClient$Request;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lvn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/login/LoginClient$a;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$a;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    const-class v0, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/facebook/login/LoginMethodHandler;

    iput-object v1, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v3, v0, v1

    check-cast v3, Lcom/facebook/login/LoginMethodHandler;

    aput-object v3, v2, v1

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lcom/facebook/login/LoginMethodHandler;->l(Lcom/facebook/login/LoginClient;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    const-class v0, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-static {p1}, Lfn0;->h0(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    invoke-static {p1}, Lfn0;->h0(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()I
    .locals 1

    sget-object v0, Lbm0$b;->b:Lbm0$b;

    invoke-virtual {v0}, Lbm0$b;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public A(Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Request;)V

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 5

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "no_internet_permission"

    const-string v1, "1"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginMethodHandler;->m(Lcom/facebook/login/LoginClient$Request;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->o()Lvn0;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lvn0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvn0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "not_tried"

    invoke-virtual {p0, v3, v0, v2}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public C()V
    .locals 7

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iget-object v6, v0, Lcom/facebook/login/LoginMethodHandler;->a:Ljava/util/Map;

    const-string v3, "skipped"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/login/LoginClient;->b:I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/login/LoginClient;->b:I

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->h()V

    :cond_2
    return-void
.end method

.method public D(Lcom/facebook/login/LoginClient$Result;)V
    .locals 2

    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    iget-object p1, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    invoke-static {v0, p1}, Lcom/facebook/login/LoginClient$Result;->d(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    const-string v0, "User logged in as different Facebook user."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Caught exception"

    invoke-static {v0, v1, p1}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V

    :goto_1
    return-void

    :cond_1
    new-instance p1, Lri0;

    const-string v0, "Can\'t validate without a token"

    invoke-direct {p1, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object p3, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->m(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->C()V

    return-void

    :cond_2
    new-instance p1, Lri0;

    const-string v0, "Attempted to authorize while a request is pending."

    invoke-direct {p1, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->b()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/login/LoginClient;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->e(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lul0;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lul0;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-static {v2, v1, v0}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/facebook/login/LoginClient;->g:Z

    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public f(Lcom/facebook/login/LoginClient$Result;)V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/facebook/login/LoginMethodHandler;->a:Ljava/util/Map;

    invoke-virtual {p0, v1, p1, v0}, Lcom/facebook/login/LoginClient;->r(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    if-eqz v0, :cond_1

    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->g:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->k:Ljava/util/Map;

    if-eqz v0, :cond_2

    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->h:Ljava/util/Map;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/login/LoginClient;->b:I

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->v(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public g(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->D(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V

    :goto_0
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public i()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/facebook/login/LoginMethodHandler;
    .locals 2

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public m(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->g()Ltn0;

    move-result-object p1

    invoke-virtual {p1}, Ltn0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v1, p0}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Ltn0;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v1, p0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Ltn0;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    invoke-direct {v1, p0}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Ltn0;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/facebook/login/CustomTabLoginMethodHandler;

    invoke-direct {v1, p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Ltn0;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {v1, p0}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Ltn0;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-direct {p1, p0}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o()Lvn0;
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->l:Lvn0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lvn0;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lvn0;

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lvn0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->l:Lvn0;

    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->l:Lvn0;

    return-object v0
.end method

.method public q()Lcom/facebook/login/LoginClient$Request;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method public final r(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/login/LoginClient$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$b;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Result$b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    iget-object v5, p2, Lcom/facebook/login/LoginClient$Result;->d:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->o()Lvn0;

    move-result-object p2

    const-string p3, "fb_mobile_login_method_complete"

    const-string p4, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {p2, p3, p4, p1}, Lvn0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->o()Lvn0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lvn0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->f:Lcom/facebook/login/LoginClient$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/login/LoginClient$b;->a()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->f:Lcom/facebook/login/LoginClient$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/login/LoginClient$b;->b()V

    :cond_0
    return-void
.end method

.method public final v(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/facebook/login/LoginClient$c;->a(Lcom/facebook/login/LoginClient$Result;)V

    :cond_0
    return-void
.end method

.method public w(IILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->j(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient;->j:Ljava/util/Map;

    invoke-static {p1, p2}, Lfn0;->x0(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient;->k:Ljava/util/Map;

    invoke-static {p1, p2}, Lfn0;->x0(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method

.method public x(Lcom/facebook/login/LoginClient$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->f:Lcom/facebook/login/LoginClient$b;

    return-void
.end method

.method public y(Landroidx/fragment/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    return-void

    :cond_0
    new-instance p1, Lri0;

    const-string v0, "Can\'t set fragment once it is already set."

    invoke-direct {p1, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(Lcom/facebook/login/LoginClient$c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$c;

    return-void
.end method
