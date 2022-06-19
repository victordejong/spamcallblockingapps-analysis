.class public final enum Lcom/facebook/a/b/a/c$a;
.super Ljava/lang/Enum;
.source "PathComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/b/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/b/a/c$a;

.field public static final enum b:Lcom/facebook/a/b/a/c$a;

.field public static final enum c:Lcom/facebook/a/b/a/c$a;

.field public static final enum d:Lcom/facebook/a/b/a/c$a;

.field public static final enum e:Lcom/facebook/a/b/a/c$a;

.field private static final synthetic g:[Lcom/facebook/a/b/a/c$a;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 28
    new-instance v0, Lcom/facebook/a/b/a/c$a;

    const-string/jumbo v1, "ID"

    invoke-direct {v0, v1, v6, v3}, Lcom/facebook/a/b/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/a/b/a/c$a;->a:Lcom/facebook/a/b/a/c$a;

    .line 29
    new-instance v0, Lcom/facebook/a/b/a/c$a;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/a/b/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/a/b/a/c$a;->b:Lcom/facebook/a/b/a/c$a;

    .line 30
    new-instance v0, Lcom/facebook/a/b/a/c$a;

    const-string/jumbo v1, "TAG"

    invoke-direct {v0, v1, v4, v5}, Lcom/facebook/a/b/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/a/b/a/c$a;->c:Lcom/facebook/a/b/a/c$a;

    .line 31
    new-instance v0, Lcom/facebook/a/b/a/c$a;

    const-string/jumbo v1, "DESCRIPTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/a/b/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/a/b/a/c$a;->d:Lcom/facebook/a/b/a/c$a;

    .line 32
    new-instance v0, Lcom/facebook/a/b/a/c$a;

    const-string/jumbo v1, "HINT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/a/b/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/a/b/a/c$a;->e:Lcom/facebook/a/b/a/c$a;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/a/b/a/c$a;

    sget-object v1, Lcom/facebook/a/b/a/c$a;->a:Lcom/facebook/a/b/a/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/a/b/a/c$a;->b:Lcom/facebook/a/b/a/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/a/b/a/c$a;->c:Lcom/facebook/a/b/a/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/a/b/a/c$a;->d:Lcom/facebook/a/b/a/c$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/a/b/a/c$a;->e:Lcom/facebook/a/b/a/c$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/a/b/a/c$a;->g:[Lcom/facebook/a/b/a/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/facebook/a/b/a/c$a;->f:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/b/a/c$a;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/facebook/a/b/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b/a/c$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/b/a/c$a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/facebook/a/b/a/c$a;->g:[Lcom/facebook/a/b/a/c$a;

    invoke-virtual {v0}, [Lcom/facebook/a/b/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/b/a/c$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/facebook/a/b/a/c$a;->f:I

    return v0
.end method
