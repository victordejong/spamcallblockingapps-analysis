.class public Lcom/callapp/contacts/util/serializer/CallAppKryo;
.super Lcom/esotericsoftware/kryo/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;
    .locals 0

    .line 11
    :try_start_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method
