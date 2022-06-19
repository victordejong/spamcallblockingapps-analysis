.class public final synthetic Lz4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/b;


# static fields
.field public static final synthetic a:Lz4/j;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/j;

    invoke-direct {v0}, Lz4/j;-><init>()V

    sput-object v0, Lz4/j;->a:Lz4/j;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
