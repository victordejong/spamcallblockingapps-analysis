.class Lcom/facebook/login/g;
.super Lcom/facebook/login/n;
.source "GetTokenLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/facebook/login/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/facebook/login/g$3;

    invoke-direct {v0}, Lcom/facebook/login/g$3;-><init>()V

    sput-object v0, Lcom/facebook/login/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/facebook/login/n;-><init>(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/j;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/login/n;-><init>(Lcom/facebook/login/j;)V

    .line 46
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "get_token"

    return-object v0
.end method

.method a(Lcom/facebook/login/j$c;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    invoke-virtual {v0, v1}, Lcom/facebook/login/f;->a(Lcom/facebook/internal/t$a;)V

    .line 86
    :cond_0
    iput-object v1, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    .line 88
    iget-object v0, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->l()V

    .line 90
    if-eqz p2, :cond_6

    .line 91
    const-string/jumbo v0, "com.facebook.platform.extra.PERMISSIONS"

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v0

    .line 94
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/g;->c(Lcom/facebook/login/j$c;Landroid/os/Bundle;)V

    .line 120
    :goto_0
    return-void

    .line 103
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 106
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    const-string/jumbo v0, "new_permissions"

    const-string/jumbo v1, ","

    .line 112
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/facebook/login/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_5
    invoke-virtual {p1, v2}, Lcom/facebook/login/j$c;->a(Ljava/util/Set;)V

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->i()V

    goto :goto_0
.end method

.method a(Lcom/facebook/login/j$c;)Z
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/login/f;

    iget-object v1, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    invoke-virtual {v1}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/login/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    .line 65
    iget-object v0, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    invoke-virtual {v0}, Lcom/facebook/login/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->k()V

    .line 71
    new-instance v0, Lcom/facebook/login/g$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/g$1;-><init>(Lcom/facebook/login/g;Lcom/facebook/login/j$c;)V

    .line 78
    iget-object v1, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    invoke-virtual {v1, v0}, Lcom/facebook/login/f;->a(Lcom/facebook/internal/t$a;)V

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    invoke-virtual {v0}, Lcom/facebook/login/f;->b()V

    .line 57
    iget-object v0, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    invoke-virtual {v0, v1}, Lcom/facebook/login/f;->a(Lcom/facebook/internal/t$a;)V

    .line 58
    iput-object v1, p0, Lcom/facebook/login/g;->c:Lcom/facebook/login/f;

    .line 60
    :cond_0
    return-void
.end method

.method b(Lcom/facebook/login/j$c;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/facebook/d;->d:Lcom/facebook/d;

    .line 126
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->d()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {p2, v0, v1}, Lcom/facebook/login/g;->a(Landroid/os/Bundle;Lcom/facebook/d;Ljava/lang/String;)Lcom/facebook/a;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    .line 128
    invoke-virtual {v1}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Lcom/facebook/a;)Lcom/facebook/login/j$d;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    invoke-virtual {v1, v0}, Lcom/facebook/login/j;->a(Lcom/facebook/login/j$d;)V

    .line 130
    return-void
.end method

.method c(Lcom/facebook/login/j$c;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v0, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->k()V

    .line 139
    const-string/jumbo v0, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/facebook/login/g$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/login/g$2;-><init>(Lcom/facebook/login/g;Landroid/os/Bundle;Lcom/facebook/login/j$c;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Lcom/facebook/internal/x$a;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/g;->b(Lcom/facebook/login/j$c;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/facebook/login/n;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    return-void
.end method
