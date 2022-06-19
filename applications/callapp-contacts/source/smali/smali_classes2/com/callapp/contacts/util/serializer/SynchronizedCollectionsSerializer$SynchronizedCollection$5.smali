.class final enum Lcom/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer$SynchronizedCollection$5;
.super Lcom/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer$SynchronizedCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer$SynchronizedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer$SynchronizedCollection;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/reflect/Field;Lcom/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer$1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
