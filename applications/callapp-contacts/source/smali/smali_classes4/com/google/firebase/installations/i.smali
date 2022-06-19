.class final synthetic Lcom/google/firebase/installations/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# static fields
.field private static final a:Lcom/google/firebase/installations/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/installations/i;

    invoke-direct {v0}, Lcom/google/firebase/installations/i;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/i;->a:Lcom/google/firebase/installations/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/components/h;
    .locals 1

    sget-object v0, Lcom/google/firebase/installations/i;->a:Lcom/google/firebase/installations/i;

    return-object v0
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/e;)Lcom/google/firebase/installations/h;

    move-result-object p1

    return-object p1
.end method
