.class final enum Lcom/unknownphone/callblocker/e/c$c$a;
.super Ljava/lang/Enum;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/e/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unknownphone/callblocker/e/c$c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unknownphone/callblocker/e/c$c$a;

.field public static final enum b:Lcom/unknownphone/callblocker/e/c$c$a;

.field private static final synthetic c:[Lcom/unknownphone/callblocker/e/c$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    new-instance v0, Lcom/unknownphone/callblocker/e/c$c$a;

    const-string/jumbo v1, "REFRESH"

    invoke-direct {v0, v1, v2}, Lcom/unknownphone/callblocker/e/c$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unknownphone/callblocker/e/c$c$a;->a:Lcom/unknownphone/callblocker/e/c$c$a;

    .line 601
    new-instance v0, Lcom/unknownphone/callblocker/e/c$c$a;

    const-string/jumbo v1, "LOAD_MORE"

    invoke-direct {v0, v1, v3}, Lcom/unknownphone/callblocker/e/c$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unknownphone/callblocker/e/c$c$a;->b:Lcom/unknownphone/callblocker/e/c$c$a;

    .line 599
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unknownphone/callblocker/e/c$c$a;

    sget-object v1, Lcom/unknownphone/callblocker/e/c$c$a;->a:Lcom/unknownphone/callblocker/e/c$c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unknownphone/callblocker/e/c$c$a;->b:Lcom/unknownphone/callblocker/e/c$c$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unknownphone/callblocker/e/c$c$a;->c:[Lcom/unknownphone/callblocker/e/c$c$a;

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
    .line 599
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unknownphone/callblocker/e/c$c$a;
    .locals 1

    .prologue
    .line 599
    const-class v0, Lcom/unknownphone/callblocker/e/c$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c$c$a;

    return-object v0
.end method

.method public static values()[Lcom/unknownphone/callblocker/e/c$c$a;
    .locals 1

    .prologue
    .line 599
    sget-object v0, Lcom/unknownphone/callblocker/e/c$c$a;->c:[Lcom/unknownphone/callblocker/e/c$c$a;

    invoke-virtual {v0}, [Lcom/unknownphone/callblocker/e/c$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unknownphone/callblocker/e/c$c$a;

    return-object v0
.end method
