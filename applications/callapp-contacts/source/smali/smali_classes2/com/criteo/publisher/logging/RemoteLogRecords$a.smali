.class public final Lcom/criteo/publisher/logging/RemoteLogRecords$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/logging/RemoteLogRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "deviceId"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "version"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "bundleId"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "sessionId"
    .end annotation
.end field

.field private final e:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "profileId"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "exception"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "logId"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "deviceOs"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundleId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    iput-object p6, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 3036
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    .line 4036
    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4037
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    .line 5037
    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5038
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    .line 6038
    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6039
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    .line 7039
    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7040
    iget v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    .line 8040
    iget v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    if-ne v0, v1, :cond_0

    .line 8041
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    .line 9041
    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9042
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    .line 10042
    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10043
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    .line 11043
    iget-object p1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 2036
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2037
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2038
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2039
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2040
    iget v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2041
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2042
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2043
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteLogContext(version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1036
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bundleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    iget v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exceptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceOs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
