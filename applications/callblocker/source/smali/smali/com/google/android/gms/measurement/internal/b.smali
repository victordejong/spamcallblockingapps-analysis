.class public final Lcom/google/android/gms/measurement/internal/b;
.super Lcom/google/android/gms/measurement/internal/fz;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lcom/google/android/gms/measurement/internal/d;

.field private c:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fz;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/ko;->a:Lcom/google/android/gms/measurement/internal/d;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 191
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 203
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Could not find SystemProperties class"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    move-object v0, p2

    .line 203
    goto :goto_0

    .line 195
    :catch_1
    move-exception v0

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Could not find SystemProperties.get() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 198
    :catch_2
    move-exception v0

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Could not access SystemProperties.get()"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    :catch_3
    move-exception v0

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "SystemProperties.get() threw an exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->C:Lcom/google/android/gms/measurement/internal/dr;

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()J
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->c:Lcom/google/android/gms/measurement/internal/dr;

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final z()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to load metadata: PackageManager is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 116
    if-nez v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to load metadata: Package name not found"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_1
    :try_start_1
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    const/16 v0, 0x19

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ih;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aL:Lcom/google/android/gms/measurement/internal/dr;

    .line 9
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jw;->f()I

    move-result v1

    const v2, 0x20c49b

    if-lt v1, v2, :cond_0

    .line 13
    const/16 v0, 0x64

    .line 15
    :cond_0
    return v0
.end method

.method final a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/16 v0, 0x1f4

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ih;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aK:Lcom/google/android/gms/measurement/internal/dr;

    .line 18
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->G:Lcom/google/android/gms/measurement/internal/dr;

    const/16 v2, 0x7d0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;II)I

    move-result v0

    .line 21
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/dr",
            "<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v0

    .line 76
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 78
    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/dr",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 45
    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 59
    :goto_0
    return-wide v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/dr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/fg;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 165
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    .line 169
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->g()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 174
    :goto_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->d:Lcom/google/android/gms/measurement/internal/dr;

    .line 175
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->e:Lcom/google/android/gms/measurement/internal/dr;

    .line 177
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "config/app/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_1
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "app_instance_id"

    .line 180
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "platform"

    const-string/jumbo v3, "android"

    .line 181
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "gmp_version"

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/b;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 183
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/d;)V
    .locals 0

    .prologue
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/dr;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/dr",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    .line 108
    return v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->n:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/dr",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 60
    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/dr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 31
    const-wide/16 v0, 0x6d60

    return-wide v0
.end method

.method public final c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/dr",
            "<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 93
    :goto_0
    return-wide v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/dr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 88
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method final c(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/16 v0, 0x19

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ih;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aK:Lcom/google/android/gms/measurement/internal/dr;

    .line 25
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->F:Lcom/google/android/gms/measurement/internal/dr;

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;II)I

    move-result v0

    .line 28
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/google/android/gms/common/util/o;->a()Ljava/lang/String;

    move-result-object v1

    .line 37
    if-eqz v0, :cond_0

    .line 38
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 39
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->c:Ljava/lang/Boolean;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->c:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 43
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 39
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final d(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/b;->z()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    if-nez v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 152
    const-string/jumbo v0, "firebase_analytics_collection_deactivated"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/dr",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/dr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 104
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 155
    const-string/jumbo v0, "google_analytics_adid_collection_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 131
    .line 132
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/b;->z()Landroid/os/Bundle;

    move-result-object v1

    .line 134
    if-nez v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move-object v1, v0

    .line 141
    :goto_0
    if-nez v1, :cond_3

    .line 149
    :cond_0
    :goto_1
    return-object v0

    .line 137
    :cond_1
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v1, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 143
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 146
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/dr",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 158
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kp;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aC:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_1
    const-string/jumbo v1, "google_analytics_automatic_screen_reporting_enabled"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 204
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    const-string/jumbo v2, "gaia_collection_enabled"

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 205
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    const-string/jumbo v2, "measurement.event_sampling_enabled"

    .line 206
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 207
    return v0
.end method

.method final h(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->J:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    const-string/jumbo v0, "debug.firebase.analytics.app"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->K:Lcom/google/android/gms/measurement/internal/dr;

    .line 210
    if-nez p1, :cond_0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    check-cast v0, Ljava/lang/String;

    .line 215
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->b:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    const-string/jumbo v0, "debug.deferred.deeplink"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final k()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 217
    const-string/jumbo v1, "app_measurement_lite"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->a:Ljava/lang/Boolean;

    .line 218
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 219
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->a:Ljava/lang/Boolean;

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->p()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method
