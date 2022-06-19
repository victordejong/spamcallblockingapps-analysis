.class public Lcom/facebook/login/a;
.super Lcom/facebook/login/s;
.source "CustomTabLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.chrome.dev"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/login/a;->c:[Ljava/lang/String;

    .line 264
    new-instance v0, Lcom/facebook/login/a$1;

    invoke-direct {v0}, Lcom/facebook/login/a$1;-><init>()V

    sput-object v0, Lcom/facebook/login/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/facebook/login/s;-><init>(Landroid/os/Parcel;)V

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/facebook/login/a;->f:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/a;->e:Ljava/lang/String;

    .line 256
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/j;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/login/s;-><init>(Lcom/facebook/login/j;)V

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/facebook/login/a;->f:Ljava/lang/String;

    .line 69
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/facebook/internal/x;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/a;->e:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-direct {p0}, Lcom/facebook/login/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/facebook/internal/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/facebook/login/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/a;->f:Ljava/lang/String;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 79
    invoke-direct {p0}, Lcom/facebook/login/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/facebook/internal/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/facebook/login/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/a;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/login/j$c;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 175
    if-eqz p1, :cond_1

    const-string/jumbo v0, "fbconnect://cct."

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0}, Lcom/facebook/login/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/x;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 181
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 183
    invoke-direct {p0, v4}, Lcom/facebook/login/a;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Invalid state parameter"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p2, v6, v0}, Lcom/facebook/login/s;->a(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    const-string/jumbo v0, "error"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-nez v0, :cond_3

    .line 190
    const-string/jumbo v0, "error_type"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_3
    const-string/jumbo v1, "error_msg"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    if-nez v1, :cond_4

    .line 195
    const-string/jumbo v1, "error_message"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_4
    if-nez v1, :cond_5

    .line 198
    const-string/jumbo v1, "error_description"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_5
    const-string/jumbo v2, "error_code"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 204
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 210
    :goto_1
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-ne v2, v3, :cond_6

    .line 212
    invoke-super {p0, p2, v4, v6}, Lcom/facebook/login/s;->a(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    move v2, v3

    .line 206
    goto :goto_1

    .line 213
    :cond_6
    if-eqz v0, :cond_8

    const-string/jumbo v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "OAuthAccessDeniedException"

    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 215
    :cond_7
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p2, v6, v0}, Lcom/facebook/login/s;->a(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 216
    :cond_8
    const/16 v3, 0x1069

    if-ne v2, v3, :cond_9

    .line 217
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p2, v6, v0}, Lcom/facebook/login/s;->a(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 219
    :cond_9
    new-instance v3, Lcom/facebook/i;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/i;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/facebook/FacebookServiceException;

    invoke-direct {v0, v3, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/i;Ljava/lang/String;)V

    invoke-super {p0, p2, v6, v0}, Lcom/facebook/login/s;->a(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    :try_start_0
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    if-nez v1, :cond_0

    .line 244
    :goto_0
    return v0

    .line 240
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v1, "7_challenge"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/facebook/login/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/facebook/login/s;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fbconnect://cct."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/facebook/login/a;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/facebook/login/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/login/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/facebook/login/a;->d:Ljava/lang/String;

    .line 157
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/a;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/login/a;->c:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 150
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 151
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/login/a;->d:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/facebook/login/a;->d:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "custom_tab"

    return-object v0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v0, "7_challenge"

    iget-object v1, p0, Lcom/facebook/login/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    return-void
.end method

.method a(IILandroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 162
    if-eq p1, v0, :cond_0

    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/s;->a(IILandroid/content/Intent;)Z

    move-result v0

    .line 171
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/a;->b:Lcom/facebook/login/j;

    invoke-virtual {v1}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v1

    .line 166
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 167
    sget-object v2, Lcom/facebook/CustomTabMainActivity;->c:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/facebook/login/a;->a(Ljava/lang/String;Lcom/facebook/login/j$c;)V

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lcom/facebook/login/s;->a(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 171
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/facebook/login/j$c;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-direct {p0}, Lcom/facebook/login/a;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/a;->b(Lcom/facebook/login/j$c;)Landroid/os/Bundle;

    move-result-object v1

    .line 123
    invoke-virtual {p0, v1, p1}, Lcom/facebook/login/a;->a(Landroid/os/Bundle;Lcom/facebook/login/j$c;)Landroid/os/Bundle;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/facebook/login/a;->b:Lcom/facebook/login/j;

    invoke-virtual {v2}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v2

    .line 126
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    sget-object v2, Lcom/facebook/CustomTabMainActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 128
    sget-object v1, Lcom/facebook/CustomTabMainActivity;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/login/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/facebook/login/a;->b:Lcom/facebook/login/j;

    invoke-virtual {v1}, Lcom/facebook/login/j;->a()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/login/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "chrome_custom_tab"

    return-object v0
.end method

.method d_()Lcom/facebook/d;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/facebook/d;->f:Lcom/facebook/d;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Lcom/facebook/login/s;->writeToParcel(Landroid/os/Parcel;I)V

    .line 261
    iget-object v0, p0, Lcom/facebook/login/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    return-void
.end method
