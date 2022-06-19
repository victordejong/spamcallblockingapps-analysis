.class Lcom/facebook/login/h;
.super Lcom/facebook/login/p;
.source "KatanaProxyLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/facebook/login/h$1;

    invoke-direct {v0}, Lcom/facebook/login/h$1;-><init>()V

    sput-object v0, Lcom/facebook/login/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/login/p;-><init>(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/j;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/login/p;-><init>(Lcom/facebook/login/j;)V

    .line 34
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "katana_proxy_auth"

    return-object v0
.end method

.method a(Lcom/facebook/login/j$c;)Z
    .locals 9

    .prologue
    .line 43
    invoke-static {}, Lcom/facebook/login/j;->m()Ljava/lang/String;

    move-result-object v3

    .line 44
    iget-object v0, p0, Lcom/facebook/login/h;->b:Lcom/facebook/login/j;

    .line 45
    invoke-virtual {v0}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->d()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->f()Z

    move-result v4

    .line 50
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->j()Z

    move-result v5

    .line 51
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->c()Lcom/facebook/login/b;

    move-result-object v6

    .line 52
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/facebook/login/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->i()Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-static/range {v0 .. v8}, Lcom/facebook/internal/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/b;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "e2e"

    invoke-virtual {p0, v1, v3}, Lcom/facebook/login/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/facebook/login/j;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/login/h;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/facebook/login/p;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    return-void
.end method
