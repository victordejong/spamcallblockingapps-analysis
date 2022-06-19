.class public final enum Lcom/google/firebase/b/c$a;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-common@@19.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/b/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/firebase/b/c$a;

.field public static final enum b:Lcom/google/firebase/b/c$a;

.field public static final enum c:Lcom/google/firebase/b/c$a;

.field public static final enum d:Lcom/google/firebase/b/c$a;

.field private static final synthetic f:[Lcom/google/firebase/b/c$a;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/google/firebase/b/c$a;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/b/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/b/c$a;->a:Lcom/google/firebase/b/c$a;

    .line 30
    new-instance v0, Lcom/google/firebase/b/c$a;

    const-string/jumbo v1, "SDK"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/firebase/b/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/b/c$a;->b:Lcom/google/firebase/b/c$a;

    .line 31
    new-instance v0, Lcom/google/firebase/b/c$a;

    const-string/jumbo v1, "GLOBAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firebase/b/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/b/c$a;->c:Lcom/google/firebase/b/c$a;

    .line 32
    new-instance v0, Lcom/google/firebase/b/c$a;

    const-string/jumbo v1, "COMBINED"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/firebase/b/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/b/c$a;->d:Lcom/google/firebase/b/c$a;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/firebase/b/c$a;

    sget-object v1, Lcom/google/firebase/b/c$a;->a:Lcom/google/firebase/b/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/b/c$a;->b:Lcom/google/firebase/b/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/b/c$a;->c:Lcom/google/firebase/b/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/b/c$a;->d:Lcom/google/firebase/b/c$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/firebase/b/c$a;->f:[Lcom/google/firebase/b/c$a;

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
    iput p3, p0, Lcom/google/firebase/b/c$a;->e:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/b/c$a;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/firebase/b/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/b/c$a;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/b/c$a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/firebase/b/c$a;->f:[Lcom/google/firebase/b/c$a;

    invoke-virtual {v0}, [Lcom/google/firebase/b/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/b/c$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/firebase/b/c$a;->e:I

    return v0
.end method
