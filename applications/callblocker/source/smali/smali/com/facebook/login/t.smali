.class Lcom/facebook/login/t;
.super Lcom/facebook/login/s;
.source "WebViewLoginMethodHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/t$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/facebook/internal/z;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/facebook/login/t$2;

    invoke-direct {v0}, Lcom/facebook/login/t$2;-><init>()V

    sput-object v0, Lcom/facebook/login/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/facebook/login/s;-><init>(Landroid/os/Parcel;)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/t;->d:Ljava/lang/String;

    .line 173
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/j;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/login/s;-><init>(Lcom/facebook/login/j;)V

    .line 43
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "web_view"

    return-object v0
.end method

.method a(Lcom/facebook/login/j$c;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/facebook/login/t;->b(Lcom/facebook/login/j$c;)Landroid/os/Bundle;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/facebook/login/t$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/login/t$1;-><init>(Lcom/facebook/login/t;Lcom/facebook/login/j$c;)V

    .line 79
    invoke-static {}, Lcom/facebook/login/j;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/t;->d:Ljava/lang/String;

    .line 80
    const-string/jumbo v2, "e2e"

    iget-object v3, p0, Lcom/facebook/login/t;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/login/t;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/facebook/login/t;->b:Lcom/facebook/login/j;

    invoke-virtual {v2}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/facebook/internal/x;->f(Landroid/content/Context;)Z

    move-result v3

    .line 85
    new-instance v4, Lcom/facebook/login/t$a;

    .line 87
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5, v0}, Lcom/facebook/login/t$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/login/t;->d:Ljava/lang/String;

    .line 89
    invoke-virtual {v4, v0}, Lcom/facebook/login/t$a;->a(Ljava/lang/String;)Lcom/facebook/login/t$a;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v3}, Lcom/facebook/login/t$a;->a(Z)Lcom/facebook/login/t$a;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/login/t$a;->b(Ljava/lang/String;)Lcom/facebook/login/t$a;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v1}, Lcom/facebook/login/t$a;->a(Lcom/facebook/internal/z$c;)Lcom/facebook/internal/z$a;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/facebook/internal/z$a;->a()Lcom/facebook/internal/z;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/t;->c:Lcom/facebook/internal/z;

    .line 95
    new-instance v0, Lcom/facebook/internal/f;

    invoke-direct {v0}, Lcom/facebook/internal/f;-><init>()V

    .line 96
    invoke-virtual {v0, v6}, Lcom/facebook/internal/f;->c(Z)V

    .line 97
    iget-object v1, p0, Lcom/facebook/login/t;->c:Lcom/facebook/internal/z;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/f;->a(Landroid/app/Dialog;)V

    .line 98
    invoke-virtual {v2}, Landroidx/fragment/app/d;->m()Landroidx/fragment/app/i;

    move-result-object v1

    const-string/jumbo v2, "FacebookDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/f;->a(Landroidx/fragment/app/i;Ljava/lang/String;)V

    .line 101
    return v6
.end method

.method b()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/login/t;->c:Lcom/facebook/internal/z;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/facebook/login/t;->c:Lcom/facebook/internal/z;

    invoke-virtual {v0}, Lcom/facebook/internal/z;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/t;->c:Lcom/facebook/internal/z;

    .line 66
    :cond_0
    return-void
.end method

.method b(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/s;->a(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 107
    return-void
.end method

.method d_()Lcom/facebook/d;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/d;->e:Lcom/facebook/d;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/facebook/login/s;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    iget-object v0, p0, Lcom/facebook/login/t;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return-void
.end method
