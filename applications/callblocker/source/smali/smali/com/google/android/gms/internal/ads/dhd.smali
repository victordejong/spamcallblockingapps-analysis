.class public Lcom/google/android/gms/internal/ads/dhd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/agj;
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/agj;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/internal/ads/adi;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lcom/google/android/gms/internal/ads/adi;

.field private static g:Lcom/google/android/gms/internal/ads/dhl;


# instance fields
.field protected a:Lcom/google/android/gms/internal/ads/aci;

.field protected b:Lcom/google/android/gms/internal/ads/dhf;

.field c:J

.field d:J

.field e:J

.field private h:Lcom/google/android/gms/internal/ads/adi;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/adi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/dhg;

    const-string/jumbo v1, "eof "

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dhg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dhd;->f:Lcom/google/android/gms/internal/ads/adi;

    .line 57
    const-class v0, Lcom/google/android/gms/internal/ads/dhd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dhl;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dhl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dhd;->g:Lcom/google/android/gms/internal/ads/dhl;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    .line 3
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dhd;->c:J

    .line 4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dhd;->d:J

    .line 5
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dhd;->e:J

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->i:Ljava/util/List;

    .line 7
    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/adi;
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dhd;->f:Lcom/google/android/gms/internal/ads/adi;

    if-eq v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    .line 38
    :goto_0
    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->b:Lcom/google/android/gms/internal/ads/dhf;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dhd;->c:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dhd;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 32
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dhd;->f:Lcom/google/android/gms/internal/ads/adi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    .line 33
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 34
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dhd;->b:Lcom/google/android/gms/internal/ads/dhf;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->b:Lcom/google/android/gms/internal/ads/dhf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dhd;->c:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dhf;->a(J)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->a:Lcom/google/android/gms/internal/ads/aci;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dhd;->b:Lcom/google/android/gms/internal/ads/dhf;

    invoke-interface {v0, v2, p0}, Lcom/google/android/gms/internal/ads/aci;->a(Lcom/google/android/gms/internal/ads/dhf;Lcom/google/android/gms/internal/ads/agj;)Lcom/google/android/gms/internal/ads/adi;

    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dhd;->b:Lcom/google/android/gms/internal/ads/dhf;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dhd;->c:J

    .line 38
    monitor-exit v1

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 41
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 43
    :catch_1
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ads/dhf;JLcom/google/android/gms/internal/ads/aci;)V
    .locals 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhd;->b:Lcom/google/android/gms/internal/ads/dhf;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhd;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhd;->c:J

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dhf;->a(J)V

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhd;->e:J

    .line 15
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dhd;->a:Lcom/google/android/gms/internal/ads/aci;

    .line 16
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/adi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->b:Lcom/google/android/gms/internal/ads/dhf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dhd;->f:Lcom/google/android/gms/internal/ads/adi;

    if-eq v0, v1, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/dhj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dhd;->i:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/dhj;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    .line 10
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->i:Ljava/util/List;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->b:Lcom/google/android/gms/internal/ads/dhf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dhf;->close()V

    .line 54
    return-void
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    sget-object v3, Lcom/google/android/gms/internal/ads/dhd;->f:Lcom/google/android/gms/internal/ads/adi;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 26
    :goto_0
    return v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    if-eqz v0, :cond_1

    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dhd;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 23
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/ads/dhd;->f:Lcom/google/android/gms/internal/ads/adi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->h:Lcom/google/android/gms/internal/ads/adi;

    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dhd;->a()Lcom/google/android/gms/internal/ads/adi;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 47
    if-lez v1, :cond_0

    .line 48
    const-string/jumbo v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adi;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
