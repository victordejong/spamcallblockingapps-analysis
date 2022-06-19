.class public final Lcom/esotericsoftware/kryo/serializers/e$a;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;-><init>()V

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/e$a;->a:Z

    const/16 v0, 0x400

    .line 252
    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/e$a;->c:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;
    .locals 1

    .line 1255
    invoke-super {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->a()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/e$a;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2255
    invoke-super {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->a()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/e$a;

    return-object v0
.end method
