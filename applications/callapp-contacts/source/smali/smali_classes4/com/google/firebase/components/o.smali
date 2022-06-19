.class final synthetic Lcom/google/firebase/components/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/d/b;


# static fields
.field private static final a:Lcom/google/firebase/components/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/o;

    invoke-direct {v0}, Lcom/google/firebase/components/o;-><init>()V

    sput-object v0, Lcom/google/firebase/components/o;->a:Lcom/google/firebase/components/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/firebase/d/b;
    .locals 1

    sget-object v0, Lcom/google/firebase/components/o;->a:Lcom/google/firebase/components/o;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
