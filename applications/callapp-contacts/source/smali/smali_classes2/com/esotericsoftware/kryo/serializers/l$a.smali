.class final Lcom/esotericsoftware/kryo/serializers/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/l$a;->a:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/l$a;->b:Ljava/lang/Class;

    .line 149
    iput p3, p0, Lcom/esotericsoftware/kryo/serializers/l$a;->c:I

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/l$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/l$a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method final c()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/esotericsoftware/kryo/serializers/l$a;->c:I

    return v0
.end method
