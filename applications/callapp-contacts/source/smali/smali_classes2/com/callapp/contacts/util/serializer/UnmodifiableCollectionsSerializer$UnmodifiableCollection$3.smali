.class final enum Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection$3;
.super Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;
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

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/reflect/Field;Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
