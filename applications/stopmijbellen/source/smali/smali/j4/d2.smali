.class public final Lj4/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lp6/c;


# instance fields
.field public final a:Lj4/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp6/c;

    const-string v1, "VerifySliceTaskHandler"

    invoke-direct {v0, v1}, Lp6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj4/d2;->b:Lp6/c;

    return-void
.end method

.method public constructor <init>(Lj4/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/d2;->a:Lj4/w;

    return-void
.end method


# virtual methods
.method public final a(Lj4/c2;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lj4/d2;->a:Lj4/w;

    iget-object v1, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v2, p1, Lj4/c2;->c:I

    iget-wide v3, p1, Lj4/c2;->d:J

    iget-object v5, p1, Lj4/c2;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lj4/w;->s(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 3
    :try_start_0
    iget-object v4, p0, Lj4/d2;->a:Lj4/w;

    iget-object v5, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v6, p1, Lj4/c2;->c:I

    iget-wide v7, p1, Lj4/c2;->d:J

    iget-object v9, p1, Lj4/c2;->e:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lj4/w;->r(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    invoke-static {v0, v1}, Lj4/b2;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    :try_start_1
    invoke-static {v1}, Lj4/j1;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p1, Lj4/c2;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lj4/d2;->b:Lp6/c;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lj4/c2;->e:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p1, Lj4/c1;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Verification of slice %s of pack %s successful."

    .line 9
    invoke-virtual {v1, v5, v4}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    iget-object v6, p0, Lj4/d2;->a:Lj4/w;

    iget-object v7, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v8, p1, Lj4/c2;->c:I

    iget-wide v9, p1, Lj4/c2;->d:J

    iget-object v11, p1, Lj4/c2;->e:Ljava/lang/String;

    .line 11
    invoke-virtual/range {v6 .. v11}, Lj4/w;->t(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lj4/n0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lj4/c2;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Failed to move slice %s after verification."

    .line 15
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lj4/c1;->a:I

    invoke-direct {v0, v1, p1}, Lj4/n0;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 16
    :cond_2
    new-instance v0, Lj4/n0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lj4/c2;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Verification failed for slice %s."

    .line 17
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lj4/c1;->a:I

    invoke-direct {v0, v1, p1}, Lj4/n0;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lj4/n0;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lj4/c2;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "Could not digest file during verification for slice %s."

    .line 18
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lj4/c1;->a:I

    invoke-direct {v1, v2, v0, p1}, Lj4/n0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :catch_1
    move-exception v0

    .line 19
    new-instance v1, Lj4/n0;

    iget p1, p1, Lj4/c1;->a:I

    const-string v2, "SHA256 algorithm not supported."

    .line 20
    invoke-direct {v1, v2, v0, p1}, Lj4/n0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 21
    :cond_3
    :try_start_2
    new-instance v0, Lj4/n0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lj4/c2;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Cannot find metadata files for slice %s."

    .line 22
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lj4/c1;->a:I

    invoke-direct {v0, v1, v4}, Lj4/n0;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 23
    new-instance v1, Lj4/n0;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lj4/c2;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "Could not reconstruct slice archive during verification for slice %s."

    .line 24
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lj4/c1;->a:I

    invoke-direct {v1, v2, v0, p1}, Lj4/n0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 25
    :cond_4
    new-instance v0, Lj4/n0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lj4/c2;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find unverified files for slice %s."

    .line 26
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lj4/c1;->a:I

    invoke-direct {v0, v1, p1}, Lj4/n0;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
