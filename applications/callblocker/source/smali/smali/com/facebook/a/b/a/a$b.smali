.class public final enum Lcom/facebook/a/b/a/a$b;
.super Ljava/lang/Enum;
.source "EventBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/b/a/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/b/a/a$b;

.field public static final enum b:Lcom/facebook/a/b/a/a$b;

.field private static final synthetic c:[Lcom/facebook/a/b/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    new-instance v0, Lcom/facebook/a/b/a/a$b;

    const-string/jumbo v1, "MANUAL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/b/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/a/a$b;->a:Lcom/facebook/a/b/a/a$b;

    .line 160
    new-instance v0, Lcom/facebook/a/b/a/a$b;

    const-string/jumbo v1, "INFERENCE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/a/b/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/a/a$b;->b:Lcom/facebook/a/b/a/a$b;

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/a/b/a/a$b;

    sget-object v1, Lcom/facebook/a/b/a/a$b;->a:Lcom/facebook/a/b/a/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/a/b/a/a$b;->b:Lcom/facebook/a/b/a/a$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/a/b/a/a$b;->c:[Lcom/facebook/a/b/a/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/b/a/a$b;
    .locals 1

    .prologue
    .line 158
    const-class v0, Lcom/facebook/a/b/a/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b/a/a$b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/b/a/a$b;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/facebook/a/b/a/a$b;->c:[Lcom/facebook/a/b/a/a$b;

    invoke-virtual {v0}, [Lcom/facebook/a/b/a/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/b/a/a$b;

    return-object v0
.end method
