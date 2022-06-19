.class public Lcom/callapp/contacts/manager/LocationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/LocationManager$LocationResult;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/location/b;

.field public b:Lcom/google/android/gms/location/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    iget-object v0, p0, Lcom/callapp/contacts/manager/LocationManager;->a:Lcom/google/android/gms/location/b;

    if-nez v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/e;->a(Landroid/content/Context;)Lcom/google/android/gms/location/b;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/LocationManager;->a:Lcom/google/android/gms/location/b;

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;DD)Landroid/location/Address;
    .locals 8

    .line 101
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 104
    :cond_0
    new-instance v2, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v7, 0x1

    move-wide v3, p1

    move-wide v5, p3

    .line 107
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 109
    :goto_0
    const-class p1, Lcom/callapp/contacts/manager/LocationManager;

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    move-object p0, v1

    .line 113
    :goto_1
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 117
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    const-string p1, "GPS"

    .line 118
    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Landroid/location/Location;)Landroid/location/Address;
    .locals 5

    if-eqz p0, :cond_0

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/manager/LocationManager;->a(Landroid/content/Context;DD)Landroid/location/Address;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/LocationManager;)Lcom/google/android/gms/location/b;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/manager/LocationManager;->a:Lcom/google/android/gms/location/b;

    return-object p0
.end method

.method public static a(Landroid/location/Address;)Ljava/lang/String;
    .locals 4

    .line 196
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 201
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ", "

    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    invoke-virtual {p0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;Landroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1079
    invoke-static {}, Lcom/callapp/contacts/manager/preferences/LocationPrefs;->get()Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    invoke-static {p1}, Lcom/callapp/contacts/manager/preferences/LocationPrefs;->a(Landroid/location/Location;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 1083
    invoke-interface {p0, p1}, Lcom/callapp/contacts/manager/LocationManager$LocationResult;->a(Landroid/location/Location;)V

    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 156
    invoke-static {}, Lcom/callapp/contacts/manager/preferences/LocationPrefs;->get()Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    invoke-static {}, Lcom/callapp/contacts/manager/preferences/LocationPrefs;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)Z
    .locals 20

    move-object/from16 v0, p0

    .line 2043
    new-instance v1, Lcom/callapp/contacts/manager/LocationManager$1;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lcom/callapp/contacts/manager/LocationManager$1;-><init>(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    iput-object v1, v0, Lcom/callapp/contacts/manager/LocationManager;->b:Lcom/google/android/gms/location/d;

    .line 2059
    iget-object v1, v0, Lcom/callapp/contacts/manager/LocationManager;->a:Lcom/google/android/gms/location/b;

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    iget-object v5, v0, Lcom/callapp/contacts/manager/LocationManager;->b:Lcom/google/android/gms/location/d;

    const/4 v0, 0x0

    .line 3007
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/location/zzba;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzba;

    move-result-object v7

    .line 6001
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Can\'t create handler inside thread that has not called Looper.prepare()"

    .line 6002
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    .line 6003
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 4001
    const-class v3, Lcom/google/android/gms/location/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 4002
    invoke-static {v5, v2, v3}, Lcom/google/android/gms/common/api/internal/j;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object v11

    .line 4003
    new-instance v12, Lcom/google/android/gms/location/h;

    invoke-direct {v12, v1, v11}, Lcom/google/android/gms/location/h;-><init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/common/api/internal/i;)V

    new-instance v13, Lcom/google/android/gms/location/g;

    const/4 v6, 0x0

    move-object v2, v13

    move-object v3, v1

    move-object v4, v12

    move-object v8, v11

    .line 4004
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/location/g;-><init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/m;Lcom/google/android/gms/location/d;Lcom/google/android/gms/location/k;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/i;)V

    .line 4005
    new-instance v2, Lcom/google/android/gms/common/api/internal/o$a;

    .line 7001
    invoke-direct {v2, v0}, Lcom/google/android/gms/common/api/internal/o$a;-><init>(Lcom/google/android/gms/common/api/internal/at;)V

    .line 8000
    iput-object v13, v2, Lcom/google/android/gms/common/api/internal/o$a;->a:Lcom/google/android/gms/common/api/internal/p;

    .line 9000
    iput-object v12, v2, Lcom/google/android/gms/common/api/internal/o$a;->b:Lcom/google/android/gms/common/api/internal/p;

    .line 10000
    iput-object v11, v2, Lcom/google/android/gms/common/api/internal/o$a;->d:Lcom/google/android/gms/common/api/internal/i;

    const/16 v3, 0x984

    .line 11000
    iput v3, v2, Lcom/google/android/gms/common/api/internal/o$a;->g:I

    .line 4010
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/o$a;->a:Lcom/google/android/gms/common/api/internal/p;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Must set register function"

    .line 11001
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/o$a;->b:Lcom/google/android/gms/common/api/internal/p;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const-string v4, "Must set unregister function"

    .line 11002
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/o$a;->d:Lcom/google/android/gms/common/api/internal/i;

    if-eqz v3, :cond_3

    const/4 v9, 0x1

    :cond_3
    const-string v3, "Must set holder"

    .line 11003
    invoke-static {v9, v3}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/o$a;->d:Lcom/google/android/gms/common/api/internal/i;

    .line 12000
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    const-string v4, "Key must not be null"

    .line 11004
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/i$a;

    new-instance v4, Lcom/google/android/gms/common/api/internal/o;

    new-instance v5, Lcom/google/android/gms/common/api/internal/av;

    iget-object v6, v2, Lcom/google/android/gms/common/api/internal/o$a;->d:Lcom/google/android/gms/common/api/internal/i;

    iget-object v7, v2, Lcom/google/android/gms/common/api/internal/o$a;->e:[Lcom/google/android/gms/common/Feature;

    iget-boolean v8, v2, Lcom/google/android/gms/common/api/internal/o$a;->f:Z

    iget v9, v2, Lcom/google/android/gms/common/api/internal/o$a;->g:I

    move-object v14, v5

    move-object v15, v2

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    .line 11005
    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/common/api/internal/av;-><init>(Lcom/google/android/gms/common/api/internal/o$a;Lcom/google/android/gms/common/api/internal/i;[Lcom/google/android/gms/common/Feature;ZI)V

    new-instance v6, Lcom/google/android/gms/common/api/internal/aw;

    invoke-direct {v6, v2, v3}, Lcom/google/android/gms/common/api/internal/aw;-><init>(Lcom/google/android/gms/common/api/internal/o$a;Lcom/google/android/gms/common/api/internal/i$a;)V

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/o$a;->c:Ljava/lang/Runnable;

    invoke-direct {v4, v5, v6, v2, v0}, Lcom/google/android/gms/common/api/internal/o;-><init>(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;Ljava/lang/Runnable;Lcom/google/android/gms/common/api/internal/at;)V

    .line 4011
    invoke-virtual {v1, v4}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/tasks/h;

    return v10
.end method

.method private b(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/manager/LocationManager;->a:Lcom/google/android/gms/location/b;

    invoke-virtual {v0}, Lcom/google/android/gms/location/b;->a()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/LocationManager$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/manager/LocationManager$4;-><init>(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/LocationManager$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/manager/LocationManager$3;-><init>(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/LocationManager;
    .locals 1

    .line 97
    new-instance v0, Lcom/callapp/contacts/manager/LocationManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/LocationManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
    .locals 1

    const-string v0, "LocationManager"

    .line 132
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/callapp/contacts/manager/LocationManager$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/LocationManager$2;-><init>(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/LocationManager;->b(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    return-void
.end method
