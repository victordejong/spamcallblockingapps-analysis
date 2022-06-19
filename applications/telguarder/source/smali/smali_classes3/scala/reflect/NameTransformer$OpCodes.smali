.class public Lscala/reflect/NameTransformer$OpCodes;
.super Ljava/lang/Object;
.source "NameTransformer.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/NameTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpCodes"
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field private final next:Lscala/reflect/NameTransformer$OpCodes;

.field private final op:C


# direct methods
.method public constructor <init>(CLjava/lang/String;Lscala/reflect/NameTransformer$OpCodes;)V
    .locals 0

    .line 28
    iput-char p1, p0, Lscala/reflect/NameTransformer$OpCodes;->op:C

    iput-object p2, p0, Lscala/reflect/NameTransformer$OpCodes;->code:Ljava/lang/String;

    iput-object p3, p0, Lscala/reflect/NameTransformer$OpCodes;->next:Lscala/reflect/NameTransformer$OpCodes;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public code()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lscala/reflect/NameTransformer$OpCodes;->code:Ljava/lang/String;

    return-object v0
.end method

.method public next()Lscala/reflect/NameTransformer$OpCodes;
    .locals 1

    .line 28
    iget-object v0, p0, Lscala/reflect/NameTransformer$OpCodes;->next:Lscala/reflect/NameTransformer$OpCodes;

    return-object v0
.end method

.method public op()C
    .locals 1

    .line 28
    iget-char v0, p0, Lscala/reflect/NameTransformer$OpCodes;->op:C

    return v0
.end method
