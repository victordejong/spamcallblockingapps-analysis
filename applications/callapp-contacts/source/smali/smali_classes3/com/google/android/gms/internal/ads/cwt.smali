.class public final Lcom/google/android/gms/internal/ads/cwt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/cwg;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cwt;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/duu;Lcom/google/android/gms/internal/ads/cwg;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cwt;->e:Z

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cwt;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/duu;->zzv()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cwt;->c:Ljava/lang/String;

    const-string p2, "pcvmspf"

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cwt;->b:Landroid/content/SharedPreferences;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cwt;->d:Lcom/google/android/gms/internal/ads/cwg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/duu;Lcom/google/android/gms/internal/ads/cwg;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cwt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/duu;Lcom/google/android/gms/internal/ads/cwg;)V

    .line 2
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/cwt;->e:Z

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwt;->a:Landroid/content/Context;

    const-string v1, "pccache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cwt;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private final a()Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwt;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "FBAMTD"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final a(IJ)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwt;->d:Lcom/google/android/gms/internal/ads/cwg;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cwg;->zza(IJ)V

    :cond_0
    return-void
.end method

.method private final a(IJLjava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwt;->d:Lcom/google/android/gms/internal/ads/cwg;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/cwg;->zza(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwt;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "LATMTD"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/ads/duw;)Ljava/lang/String;
    .locals 3

    .line 153
    invoke-static {}, Lcom/google/android/gms/internal/ads/dva;->a()Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v1

    .line 8005
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dva$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v1

    .line 8010
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dva;->zzacj:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dva$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v1

    .line 8019
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/dva;->zzacl:J

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dva$a;->b(J)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v1

    .line 8023
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/dva;->zzacm:J

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dva$a;->c(J)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object p0

    .line 9015
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/dva;->zzack:J

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dva$a;->a(J)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object p0

    .line 9067
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    .line 159
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p0, Lcom/google/android/gms/internal/ads/dva;

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dln;->f()Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final c(I)Lcom/google/android/gms/internal/ads/dva;
    .locals 4

    .line 131
    sget v0, Lcom/google/android/gms/internal/ads/cwv;->a:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cwt;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cwt;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/cwv;->b:I

    if-ne p1, v0, :cond_1

    .line 134
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cwt;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cwt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 137
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 139
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/util/k;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    .line 140
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cwt;->e:Z

    if-eqz v0, :cond_3

    .line 141
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->b()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    .line 143
    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dva;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dva;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/16 p1, 0x7ed

    .line 147
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    :catch_1
    return-object v1
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/cwn;
    .locals 8

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/cwt;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 14
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cwt;->c(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0xfb6

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    const/4 p1, 0x0

    .line 17
    monitor-exit v2

    return-object p1

    .line 1005
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 18
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/cwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 19
    new-instance v4, Ljava/io/File;

    const-string v5, "pcam.jar"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 21
    new-instance v4, Ljava/io/File;

    const-string v5, "pcam"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v6, "pcbc"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    new-instance v6, Ljava/io/File;

    const-string v7, "pcopt"

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x1398

    .line 24
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/cwn;

    invoke-direct {v0, p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/cwn;-><init>(Lcom/google/android/gms/internal/ads/dva;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/duw;)Z
    .locals 6

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    sget-object v2, Lcom/google/android/gms/internal/ads/cwt;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v3

    .line 7005
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 116
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/cwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 117
    new-instance v4, Ljava/io/File;

    const-string v5, "pcbc"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7007
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/duw;->zzacg:Lcom/google/android/gms/internal/ads/dlw;

    .line 118
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 p1, 0xfb4

    .line 119
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    const/4 p1, 0x0

    .line 120
    monitor-exit v2

    return p1

    .line 121
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cwt;->b(Lcom/google/android/gms/internal/ads/duw;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cwt;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 123
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cwt;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0x1397

    .line 126
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xfb5

    .line 127
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 128
    :goto_0
    monitor-exit v2

    return p1

    :catchall_0
    move-exception p1

    .line 129
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/duw;Lcom/google/android/gms/internal/ads/cwu;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 46
    sget-object v5, Lcom/google/android/gms/internal/ads/cwt;->f:Ljava/lang/Object;

    monitor-enter v5

    .line 47
    :try_start_0
    sget v6, Lcom/google/android/gms/internal/ads/cwv;->a:I

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/cwt;->c(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object v6

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v7

    .line 3005
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 4005
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v0, 0xfae

    .line 50
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 51
    monitor-exit v5

    return v8

    .line 53
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 54
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/cwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 55
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    const/16 v12, 0xfaf

    if-eqz v11, :cond_3

    const/16 v11, 0xfb7

    .line 57
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "1"

    goto :goto_0

    :cond_1
    const-string v14, "0"

    .line 58
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "1"

    goto :goto_1

    :cond_2
    const-string v6, "0"

    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "d:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",f:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-direct {v1, v11, v9, v10, v6}, Lcom/google/android/gms/internal/ads/cwt;->a(IJLjava/lang/String;)V

    .line 60
    invoke-direct {v1, v12, v9, v10}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    goto :goto_4

    .line 62
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_6

    const/16 v11, 0xfb8

    const-string v13, "cw:"

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "1"

    goto :goto_2

    :cond_4
    const-string v6, "0"

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 65
    :goto_3
    invoke-direct {v1, v11, v9, v10, v6}, Lcom/google/android/gms/internal/ads/cwt;->a(IJLjava/lang/String;)V

    .line 66
    invoke-direct {v1, v12, v9, v10}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_7

    .line 70
    monitor-exit v5

    return v8

    .line 71
    :cond_7
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/cwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 72
    new-instance v7, Ljava/io/File;

    const-string v9, "pcam.jar"

    invoke-direct {v7, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    new-instance v9, Ljava/io/File;

    const-string v10, "pcbc"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4006
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/duw;->zzacf:Lcom/google/android/gms/internal/ads/dlw;

    .line 74
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;[B)Z

    move-result v10

    if-nez v10, :cond_8

    const/16 v0, 0xfb0

    .line 75
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 76
    monitor-exit v5

    return v8

    .line 4007
    :cond_8
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/duw;->zzacg:Lcom/google/android/gms/internal/ads/dlw;

    .line 77
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;[B)Z

    move-result v9

    if-nez v9, :cond_9

    const/16 v0, 0xfb1

    .line 78
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 79
    monitor-exit v5

    return v8

    :cond_9
    if-eqz v2, :cond_a

    .line 80
    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/ads/cwu;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v0, 0xfb2

    .line 81
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 82
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;)Z

    .line 83
    monitor-exit v5

    return v8

    .line 84
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/cwt;->b(Lcom/google/android/gms/internal/ads/duw;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 86
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cwt;->b:Landroid/content/SharedPreferences;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/cwt;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/cwt;->b:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/cwt;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_b

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/cwt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    :cond_b
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v2, 0xfb3

    .line 93
    invoke-direct {v1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    :cond_c
    if-nez v0, :cond_d

    .line 96
    monitor-exit v5

    return v8

    .line 98
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 99
    sget v2, Lcom/google/android/gms/internal/ads/cwv;->a:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cwt;->c(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 5005
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 101
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_e
    sget v2, Lcom/google/android/gms/internal/ads/cwv;->b:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cwt;->c(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 6005
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 104
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_f
    new-instance v2, Ljava/io/File;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cwt;->a:Landroid/content/Context;

    const-string v7, "pccache"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/cwt;->c:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v6, v2

    :goto_6
    if-ge v8, v6, :cond_11

    aget-object v7, v2, v8

    .line 107
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 108
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;)Z

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_11
    const/16 v0, 0x1396

    .line 110
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 111
    monitor-exit v5

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 112
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(I)Z
    .locals 6

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    sget-object v2, Lcom/google/android/gms/internal/ads/cwt;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cwt;->c(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0xfb9

    .line 31
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 32
    monitor-exit v2

    return v3

    .line 2005
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 34
    new-instance v4, Ljava/io/File;

    const-string v5, "pcam.jar"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 p1, 0xfba

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 37
    monitor-exit v2

    return v3

    .line 38
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "pcbc"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xfbb

    .line 40
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    .line 41
    monitor-exit v2

    return v3

    :cond_2
    const/16 p1, 0x139b

    .line 42
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cwt;->a(IJ)V

    const/4 p1, 0x1

    .line 43
    monitor-exit v2

    return p1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
