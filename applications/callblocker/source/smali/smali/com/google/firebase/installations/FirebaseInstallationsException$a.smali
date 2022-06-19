.class public final enum Lcom/google/firebase/installations/FirebaseInstallationsException$a;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/FirebaseInstallationsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/installations/FirebaseInstallationsException$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

.field private static final synthetic b:[Lcom/google/firebase/installations/FirebaseInstallationsException$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    const-string/jumbo v1, "BAD_CONFIG"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->a:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->a:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->b:[Lcom/google/firebase/installations/FirebaseInstallationsException$a;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/installations/FirebaseInstallationsException$a;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/installations/FirebaseInstallationsException$a;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->b:[Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-virtual {v0}, [Lcom/google/firebase/installations/FirebaseInstallationsException$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    return-object v0
.end method
