.class public Lkotlin/reflect/jvm/internal/impl/resolve/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/f;

.field static final synthetic b:Z = true

.field private static final c:Lkotlin/reflect/jvm/internal/impl/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/f;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/f;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/f;

    .line 38
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/c;->a:Lkotlin/reflect/jvm/internal/impl/e/c$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/f$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/f$1;-><init>()V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/e/c$a;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/e/c;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/f;->c:Lkotlin/reflect/jvm/internal/impl/e/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12

    .line 35
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 1121
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1126
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    if-eqz v0, :cond_1

    .line 1127
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 1128
    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 1129
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/f;->c:Lkotlin/reflect/jvm/internal/impl/e/c;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->a()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->a()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 1136
    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-eqz v0, :cond_f

    .line 1137
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 1138
    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 1140
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v4

    .line 1141
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v5

    .line 1142
    sget-boolean v6, Lkotlin/reflect/jvm/internal/impl/resolve/f;->b:Z

    if-nez v6, :cond_5

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-ne v6, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 1144
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/f;->c:Lkotlin/reflect/jvm/internal/impl/e/c;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v4

    .line 1145
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 1152
    :cond_6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getValueParameters()Ljava/util/List;

    move-result-object v2

    .line 1153
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getValueParameters()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 1154
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1155
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/resolve/f;->c:Lkotlin/reflect/jvm/internal/impl/e/c;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v7

    .line 1156
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    invoke-virtual {v6, v8}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v6

    .line 1157
    invoke-virtual {v7, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    return v6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1163
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    if-eqz v2, :cond_9

    return v2

    .line 1168
    :cond_9
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    .line 1169
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 1170
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 1171
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v6

    .line 1172
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v7

    .line 1173
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v8, v9

    if-eqz v8, :cond_a

    return v8

    :cond_a
    const/4 v8, 0x0

    .line 1177
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 1178
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/resolve/f;->c:Lkotlin/reflect/jvm/internal/impl/e/c;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v9, v10}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v10

    .line 1179
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v9, v11}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v9

    .line 1180
    invoke-virtual {v10, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_b

    return v9

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1187
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_e

    return v1

    .line 1192
    :cond_e
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-eqz v1, :cond_12

    instance-of v1, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-eqz v1, :cond_12

    .line 1193
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v0

    .line 1194
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v1

    .line 1195
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->ordinal()I

    move-result v0

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_12

    return v0

    .line 1201
    :cond_f
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_14

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_14

    .line 1202
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 1203
    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 1205
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ordinal()I

    move-result v3

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_10

    .line 1206
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ordinal()I

    move-result p1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ordinal()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 1209
    :cond_10
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isCompanionObject()Z

    move-result v3

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isCompanionObject()Z

    move-result v1

    if-eq v3, v1, :cond_12

    .line 1210
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isCompanionObject()Z

    move-result p1

    if-eqz p1, :cond_11

    return v2

    :cond_11
    const/4 p1, -0x1

    return p1

    .line 1221
    :cond_12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/f;->c:Lkotlin/reflect/jvm/internal/impl/e/c;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 1224
    :cond_13
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    .line 1225
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p2

    .line 1227
    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)I

    move-result p1

    return p1

    .line 1214
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Unsupported pair of descriptors:\n\'%s\' Class: %s\n%s\' Class: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
