.class interface abstract Lcom/explorestack/protobuf/MutabilityOracle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMMUTABLE:Lcom/explorestack/protobuf/MutabilityOracle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/explorestack/protobuf/MutabilityOracle$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/MutabilityOracle$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/MutabilityOracle;->IMMUTABLE:Lcom/explorestack/protobuf/MutabilityOracle;

    return-void
.end method


# virtual methods
.method public abstract ensureMutable()V
.end method
