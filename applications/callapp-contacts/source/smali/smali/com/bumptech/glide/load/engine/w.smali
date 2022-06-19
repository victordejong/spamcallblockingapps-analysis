.class final Lcom/bumptech/glide/load/engine/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# static fields
.field private static final b:Lcom/bumptech/glide/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/g<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/bumptech/glide/load/engine/a/b;

.field private final d:Lcom/bumptech/glide/load/f;

.field private final e:Lcom/bumptech/glide/load/f;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/load/h;

.field private final j:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/bumptech/glide/g/g;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/g/g;-><init>(J)V

    sput-object v0, Lcom/bumptech/glide/load/engine/w;->b:Lcom/bumptech/glide/g/g;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/load/l;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/b;",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/f;",
            "II",
            "Lcom/bumptech/glide/load/l<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/h;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/w;->c:Lcom/bumptech/glide/load/engine/a/b;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/w;->d:Lcom/bumptech/glide/load/f;

    .line 36
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/w;->e:Lcom/bumptech/glide/load/f;

    .line 37
    iput p4, p0, Lcom/bumptech/glide/load/engine/w;->f:I

    .line 38
    iput p5, p0, Lcom/bumptech/glide/load/engine/w;->g:I

    .line 39
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/w;->j:Lcom/bumptech/glide/load/l;

    .line 40
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/w;->h:Ljava/lang/Class;

    .line 41
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/w;->i:Lcom/bumptech/glide/load/h;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lcom/bumptech/glide/load/engine/w;

    .line 48
    iget v0, p0, Lcom/bumptech/glide/load/engine/w;->g:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/w;->g:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/w;->f:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/w;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->j:Lcom/bumptech/glide/load/l;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/w;->j:Lcom/bumptech/glide/load/l;

    .line 50
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->h:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/w;->h:Ljava/lang/Class;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->d:Lcom/bumptech/glide/load/f;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/w;->d:Lcom/bumptech/glide/load/f;

    .line 52
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->e:Lcom/bumptech/glide/load/f;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/w;->e:Lcom/bumptech/glide/load/f;

    .line 53
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->i:Lcom/bumptech/glide/load/h;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/w;->i:Lcom/bumptech/glide/load/h;

    .line 54
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->d:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->e:Lcom/bumptech/glide/load/f;

    invoke-interface {v1}, Lcom/bumptech/glide/load/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget v1, p0, Lcom/bumptech/glide/load/engine/w;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget v1, p0, Lcom/bumptech/glide/load/engine/w;->g:I

    add-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->j:Lcom/bumptech/glide/load/l;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->i:Lcom/bumptech/glide/load/h;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->d:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->e:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/w;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->h:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->j:Lcom/bumptech/glide/load/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->i:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->c:Lcom/bumptech/glide/load/engine/a/b;

    const-class v1, [B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/a/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 77
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/w;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/w;->g:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 78
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->e:Lcom/bumptech/glide/load/f;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/f;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 79
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->d:Lcom/bumptech/glide/load/f;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/f;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 80
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 81
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->j:Lcom/bumptech/glide/load/l;

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/l;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->i:Lcom/bumptech/glide/load/h;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/h;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 1090
    sget-object v1, Lcom/bumptech/glide/load/engine/w;->b:Lcom/bumptech/glide/g/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/w;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/w;->h:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/w;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 1093
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/w;->h:Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Lcom/bumptech/glide/g/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/w;->c:Lcom/bumptech/glide/load/engine/a/b;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/engine/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method
