.class public final Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00122\u0010\u0004\u001a.\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\u0005j\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006`\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J5\u0010\u000e\u001a.\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\u0005j\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006`\u0007H\u00c6\u0003JI\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u000324\u0008\u0002\u0010\u0004\u001a.\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\u0005j\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006`\u0007H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R=\u0010\u0004\u001a.\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\u0005j\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;",
        "",
        "tableName",
        "",
        "fieldMap",
        "Ljava/util/HashMap;",
        "Lkotlin/reflect/KProperty1;",
        "Lkotlin/collections/HashMap;",
        "(Ljava/lang/String;Ljava/util/HashMap;)V",
        "getFieldMap",
        "()Ljava/util/HashMap;",
        "getTableName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final fieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/m<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/m<",
            "**>;>;)V"
        }
    .end annotation

    const-string v0, "tableName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->tableName:Ljava/lang/String;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->fieldMap:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->tableName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->fieldMap:Ljava/util/HashMap;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->copy(Ljava/lang/String;Ljava/util/HashMap;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/m<",
            "**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->fieldMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/HashMap;)Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/m<",
            "**>;>;)",
            "Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;"
        }
    .end annotation

    const-string v0, "tableName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    invoke-direct {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->tableName:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->fieldMap:Ljava/util/HashMap;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->fieldMap:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getFieldMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/m<",
            "**>;>;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->fieldMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->tableName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->fieldMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataBaseSchema(tableName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fieldMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
