.class public final Lcom/facebook/ads/redexgen/X/4S;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/4R;

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/4a;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A08:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 1

    .line 11130
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    .line 11132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    .line 11133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    .line 11134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    .line 11135
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A07:Ljava/util/List;

    .line 11136
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A03:I

    .line 11137
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    return-void
.end method

.method private final A00(IZ)Landroid/view/View;
    .locals 2

    .line 11138
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4S;->A0J(IZJ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    return-object v0
.end method

.method private final A01(I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 10

    .line 11139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v0, "changedScrapSize":I
    if-nez v8, :cond_1

    .line 11140
    .end local v0    # "changedScrapSize":I
    :cond_0
    return-object v9

    .line 11141
    :cond_1
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    const/16 v7, 0x20

    if-ge v2, v8, :cond_3

    .line 11142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11143
    .local v8, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 11144
    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11145
    return-object v1

    .line 11146
    .end local v8    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11147
    .end local p0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/av;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/av;->A0E(I)I

    move-result v1

    .line 11149
    .local p0, "offsetPosition":I
    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 11150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/48;->A05(I)J

    move-result-wide v5

    .line 11151
    .local v8, "id":J
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 11152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    .line 11153
    .local v7, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0L()J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-nez v0, :cond_4

    .line 11154
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11155
    return-object v3

    .line 11156
    .end local v7    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11157
    .end local p0    # "offsetPosition":I
    .end local v8    # "id":J
    .end local v2    # "i":I
    :cond_5
    return-object v9
.end method

.method private final A02(IZ)Lcom/facebook/ads/redexgen/X/4c;
    .locals 6

    .line 11158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11159
    .local p0, "scrapCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 11160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11161
    .local p2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 11162
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4Z;->A09:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11163
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11164
    return-object v1

    .line 11165
    .end local p2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11166
    .end local p1    # "i":I
    :cond_2
    if-nez p2, :cond_4

    .line 11167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A09(I)Landroid/view/View;

    move-result-object v2

    .line 11168
    .local p1, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 11169
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v4

    .line 11170
    .local p2, "vh":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3i;->A0H(Landroid/view/View;)V

    .line 11171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3i;->A08(Landroid/view/View;)I

    move-result v1

    .line 11172
    .local v0, "layoutIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 11173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3i;->A0D(I)V

    .line 11174
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A0X(Landroid/view/View;)V

    .line 11175
    const/16 v0, 0x2020

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11176
    return-object v4

    .line 11177
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d7

    const/16 v1, 0x34

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11178
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11179
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0    # "layoutIndex":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 11180
    .local p1, "cacheSize":I
    const/4 v4, 0x0

    .local p2, "i":I
    :goto_1
    if-ge v4, v5, :cond_8

    .line 11181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11182
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "JIr6ryR6hWTh2WYmHdarh5TP4xAypylw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "npmC62BAQEqZygYceoAiNhkQGghR92x0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 11183
    if-nez p2, :cond_6

    .line 11184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11185
    :cond_6
    return-object v3

    .line 11186
    .end local v0    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11187
    .end local p2    # "i":I
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A03(JIZ)Lcom/facebook/ads/redexgen/X/4c;
    .locals 7

    .line 11188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11189
    .local p0, "count":I
    add-int/lit8 v5, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v5, :cond_5

    .line 11190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    .line 11191
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0L()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11192
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 11193
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11194
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11195
    :cond_0
    if-nez p4, :cond_2

    .line 11196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11197
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "QSy8SYzj9TGZXONlvrRd2Hl7xNggaX2t"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FStY7c67BTbAcWAeNWEJdNOuKPlMCdqH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/El;->removeDetachedView(Landroid/view/View;Z)V

    .line 11198
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4S;->A0W(Landroid/view/View;)V

    .line 11199
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "3Wf6vMFZ4V6K3VYEAeXlgILB3Kqn8tmj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2gRFj7AUivxslEY3Do0gPT185jjA6g6i"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 11200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11201
    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0V(II)V

    .line 11202
    :cond_4
    return-object v3

    .line 11203
    .end local p1    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11204
    .local p1, "cacheSize":I
    add-int/lit8 v5, v0, -0x1

    .local v2, "i":I
    :goto_2
    const/4 v4, 0x0

    if-ltz v5, :cond_a

    .line 11205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    .line 11206
    .local p4, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0L()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_8

    .line 11207
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 11208
    if-nez p4, :cond_6

    .line 11209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11210
    :cond_6
    return-object v3

    .line 11211
    :cond_7
    if-nez p4, :cond_8

    .line 11212
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11213
    .end local p4    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 11214
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "Px4MCeB3tpw5Kws4bgsL6OQ2tD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cZzmTfGm3PDqBsfSjCaAnG9aB7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v4

    .line 11215
    .end local v2    # "i":I
    :cond_a
    return-object v4
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x30b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4S;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        0x38t
        0x22t
        0x10t
        0x25t
        0x25t
        0x30t
        0x32t
        0x39t
        0x34t
        0x35t
        0x6bt
        0x38t
        0x56t
        0x11t
        0x18t
        0x18t
        0xdt
        0x1bt
        0xat
        0x44t
        0x20t
        0x27t
        0x29t
        0x40t
        0x7dt
        0x6ct
        0x64t
        0x29t
        0x6at
        0x66t
        0x7ct
        0x67t
        0x7dt
        0x33t
        0x4ft
        0x48t
        0x15t
        0x12t
        0x7t
        0x12t
        0x3t
        0x5ct
        0x79t
        0x5bt
        0x56t
        0x56t
        0x5ft
        0x5et
        0x1at
        0x49t
        0x59t
        0x48t
        0x5bt
        0x4at
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x1at
        0x4dt
        0x53t
        0x4et
        0x52t
        0x1at
        0x5bt
        0x54t
        0x1at
        0x53t
        0x54t
        0x4ct
        0x5bt
        0x56t
        0x53t
        0x5et
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x14t
        0x1at
        0x73t
        0x54t
        0x4ct
        0x5bt
        0x56t
        0x53t
        0x5et
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x49t
        0x1at
        0x59t
        0x5bt
        0x54t
        0x54t
        0x55t
        0x4et
        0x1at
        0x58t
        0x5ft
        0x1at
        0x48t
        0x5ft
        0x4ft
        0x49t
        0x5ft
        0x5et
        0x1at
        0x5ct
        0x48t
        0x55t
        0x57t
        0x1at
        0x49t
        0x59t
        0x48t
        0x5bt
        0x4at
        0x16t
        0x1at
        0x4et
        0x52t
        0x5ft
        0x43t
        0x1at
        0x49t
        0x52t
        0x55t
        0x4ft
        0x56t
        0x5et
        0x1at
        0x48t
        0x5ft
        0x58t
        0x55t
        0x4ft
        0x54t
        0x5et
        0x1at
        0x5ct
        0x48t
        0x55t
        0x57t
        0x1at
        0x48t
        0x5ft
        0x59t
        0x43t
        0x59t
        0x56t
        0x5ft
        0x48t
        0x1at
        0x4at
        0x55t
        0x55t
        0x56t
        0x14t
        0x74t
        0x53t
        0x5et
        0x52t
        0x53t
        0x4et
        0x54t
        0x4et
        0x49t
        0x58t
        0x53t
        0x5et
        0x44t
        0x1dt
        0x59t
        0x58t
        0x49t
        0x58t
        0x5et
        0x49t
        0x58t
        0x59t
        0x13t
        0x1dt
        0x74t
        0x53t
        0x4bt
        0x5ct
        0x51t
        0x54t
        0x59t
        0x1dt
        0x54t
        0x49t
        0x58t
        0x50t
        0x1dt
        0x4dt
        0x52t
        0x4et
        0x54t
        0x49t
        0x54t
        0x52t
        0x53t
        0x1dt
        0x1ft
        0x38t
        0x35t
        0x39t
        0x38t
        0x25t
        0x3ft
        0x25t
        0x22t
        0x33t
        0x38t
        0x35t
        0x2ft
        0x76t
        0x32t
        0x33t
        0x22t
        0x33t
        0x35t
        0x22t
        0x33t
        0x32t
        0x78t
        0x76t
        0x1ft
        0x38t
        0x20t
        0x37t
        0x3at
        0x3ft
        0x32t
        0x76t
        0x20t
        0x3ft
        0x33t
        0x21t
        0x76t
        0x3et
        0x39t
        0x3at
        0x32t
        0x33t
        0x24t
        0x76t
        0x37t
        0x32t
        0x37t
        0x26t
        0x22t
        0x33t
        0x24t
        0x76t
        0x26t
        0x39t
        0x25t
        0x3ft
        0x22t
        0x3ft
        0x39t
        0x38t
        0x59t
        0x7et
        0x66t
        0x71t
        0x7ct
        0x79t
        0x74t
        0x30t
        0x79t
        0x64t
        0x75t
        0x7dt
        0x30t
        0x60t
        0x7ft
        0x63t
        0x79t
        0x64t
        0x79t
        0x7ft
        0x7et
        0x30t
        0x12t
        0x22t
        0x33t
        0x20t
        0x31t
        0x31t
        0x24t
        0x25t
        0x61t
        0x2et
        0x33t
        0x61t
        0x20t
        0x35t
        0x35t
        0x20t
        0x22t
        0x29t
        0x24t
        0x25t
        0x61t
        0x37t
        0x28t
        0x24t
        0x36t
        0x32t
        0x61t
        0x2ct
        0x20t
        0x38t
        0x61t
        0x2ft
        0x2et
        0x35t
        0x61t
        0x23t
        0x24t
        0x61t
        0x33t
        0x24t
        0x22t
        0x38t
        0x22t
        0x2dt
        0x24t
        0x25t
        0x6ft
        0x61t
        0x28t
        0x32t
        0x12t
        0x22t
        0x33t
        0x20t
        0x31t
        0x7bt
        0x6ct
        0x55t
        0x48t
        0x18t
        0x5ct
        0x5dt
        0x4ct
        0x59t
        0x5bt
        0x50t
        0x5dt
        0x5ct
        0x18t
        0x4et
        0x51t
        0x5dt
        0x4ft
        0x18t
        0x4bt
        0x50t
        0x57t
        0x4dt
        0x54t
        0x5ct
        0x18t
        0x5at
        0x5dt
        0x18t
        0x4at
        0x5dt
        0x55t
        0x57t
        0x4et
        0x5dt
        0x5ct
        0x18t
        0x5et
        0x4at
        0x57t
        0x55t
        0x18t
        0x6at
        0x5dt
        0x5bt
        0x41t
        0x5bt
        0x54t
        0x5dt
        0x4at
        0x6et
        0x51t
        0x5dt
        0x4ft
        0x18t
        0x5at
        0x5dt
        0x5et
        0x57t
        0x4at
        0x5dt
        0x18t
        0x51t
        0x4ct
        0x18t
        0x5bt
        0x59t
        0x56t
        0x18t
        0x5at
        0x5dt
        0x18t
        0x4at
        0x5dt
        0x5bt
        0x41t
        0x5bt
        0x54t
        0x5dt
        0x5ct
        0x2t
        0x18t
        0x57t
        0x71t
        0x7at
        0x6at
        0x6dt
        0x64t
        0x23t
        0x77t
        0x6ct
        0x23t
        0x71t
        0x66t
        0x60t
        0x7at
        0x60t
        0x6ft
        0x66t
        0x23t
        0x62t
        0x6dt
        0x23t
        0x6at
        0x64t
        0x6dt
        0x6ct
        0x71t
        0x66t
        0x67t
        0x23t
        0x75t
        0x6at
        0x66t
        0x74t
        0x23t
        0x6bt
        0x6ct
        0x6ft
        0x67t
        0x66t
        0x71t
        0x2dt
        0x23t
        0x5at
        0x6ct
        0x76t
        0x23t
        0x70t
        0x6bt
        0x6ct
        0x76t
        0x6ft
        0x67t
        0x23t
        0x65t
        0x6at
        0x71t
        0x70t
        0x77t
        0x23t
        0x60t
        0x62t
        0x6ft
        0x6ft
        0x23t
        0x70t
        0x77t
        0x6ct
        0x73t
        0x4at
        0x64t
        0x6dt
        0x6ct
        0x71t
        0x6at
        0x6dt
        0x64t
        0x55t
        0x6at
        0x66t
        0x74t
        0x2bt
        0x75t
        0x6at
        0x66t
        0x74t
        0x2at
        0x23t
        0x61t
        0x66t
        0x65t
        0x6ct
        0x71t
        0x66t
        0x23t
        0x60t
        0x62t
        0x6ft
        0x6ft
        0x6at
        0x6dt
        0x64t
        0x23t
        0x71t
        0x66t
        0x60t
        0x7at
        0x60t
        0x6ft
        0x66t
        0x2dt
        0x30t
        0x32t
        0x23t
        0x1t
        0x3et
        0x32t
        0x20t
        0x11t
        0x38t
        0x25t
        0x7t
        0x38t
        0x24t
        0x3et
        0x23t
        0x3et
        0x38t
        0x39t
        0x16t
        0x39t
        0x33t
        0x3t
        0x2et
        0x27t
        0x32t
        0x77t
        0x25t
        0x32t
        0x23t
        0x22t
        0x25t
        0x39t
        0x32t
        0x33t
        0x77t
        0x36t
        0x77t
        0x21t
        0x3et
        0x32t
        0x20t
        0x77t
        0x23t
        0x3ft
        0x36t
        0x23t
        0x77t
        0x3et
        0x24t
        0x77t
        0x3et
        0x30t
        0x39t
        0x38t
        0x25t
        0x32t
        0x33t
        0x79t
        0x77t
        0xet
        0x38t
        0x22t
        0x77t
        0x3at
        0x22t
        0x24t
        0x23t
        0x77t
        0x34t
        0x36t
        0x3bt
        0x3bt
        0x77t
        0x24t
        0x23t
        0x38t
        0x27t
        0x1et
        0x30t
        0x39t
        0x38t
        0x25t
        0x3et
        0x39t
        0x30t
        0x77t
        0x35t
        0x32t
        0x31t
        0x38t
        0x25t
        0x32t
        0x77t
        0x25t
        0x32t
        0x23t
        0x22t
        0x25t
        0x39t
        0x3et
        0x39t
        0x30t
        0x77t
        0x23t
        0x3ft
        0x3et
        0x24t
        0x77t
        0x21t
        0x3et
        0x32t
        0x20t
        0x79t
        0x16t
        0x14t
        0x5t
        0x27t
        0x18t
        0x14t
        0x6t
        0x37t
        0x1et
        0x3t
        0x21t
        0x1et
        0x2t
        0x18t
        0x5t
        0x18t
        0x1et
        0x1ft
        0x30t
        0x1ft
        0x15t
        0x25t
        0x8t
        0x1t
        0x14t
        0x51t
        0x3t
        0x14t
        0x5t
        0x4t
        0x3t
        0x1ft
        0x14t
        0x15t
        0x51t
        0x10t
        0x51t
        0x7t
        0x18t
        0x14t
        0x6t
        0x51t
        0x6t
        0x19t
        0x18t
        0x12t
        0x19t
        0x51t
        0x15t
        0x1et
        0x14t
        0x2t
        0x51t
        0x1ft
        0x1et
        0x5t
        0x51t
        0x19t
        0x10t
        0x7t
        0x14t
        0x51t
        0x10t
        0x51t
        0x27t
        0x18t
        0x14t
        0x6t
        0x39t
        0x1et
        0x1dt
        0x15t
        0x14t
        0x3t
        0x46t
        0x4bt
        0x53t
        0x45t
        0x5ft
        0x5et
        0xat
        0x43t
        0x44t
        0x4et
        0x4ft
        0x52t
        0xat
        0x59t
        0x42t
        0x45t
        0x5ft
        0x46t
        0x4et
        0xat
        0x44t
        0x45t
        0x5et
        0xat
        0x48t
        0x4ft
        0xat
        0x7t
        0x1bt
        0xat
        0x4bt
        0x4ct
        0x5et
        0x4ft
        0x58t
        0xat
        0x5ft
        0x44t
        0x42t
        0x43t
        0x4et
        0x43t
        0x44t
        0x4dt
        0xat
        0x4bt
        0xat
        0x5ct
        0x43t
        0x4ft
        0x5dt
        0x10t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "d6jyZ4YF4aAx6mY2oyMV8cMH3x1tTmGX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6ShmsSFKDmdiSeaEbVJI0pMmhv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jy6CLSdjiTJVmxisrmhO9od6ZqYVQGpz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aKDRqPZxmSwbRmY5O7VQCqOvGq0yRVmO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vr6xx06LqTBYtEPA9ZzozSqPDwzkbNaY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y84hViIy7qYskGYmJ3QVEouknT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    return-void
.end method

.method private final A07()V
    .locals 1

    .line 11216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11217
    .local p0, "count":I
    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11218
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    .line 11219
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11220
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11221
    invoke-static {}, Lcom/facebook/ads/redexgen/X/El;->A12()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/au;->A02()V

    .line 11223
    :cond_1
    return-void
.end method

.method private final A08(I)V
    .locals 2

    .line 11224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11225
    .local p0, "viewHolder":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A0e(Lcom/facebook/ads/redexgen/X/4c;Z)V

    .line 11226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11227
    return-void
.end method

.method private A09(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 11228
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    .local p0, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 11229
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 11230
    .local p2, "view":Landroid/view/View;
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 11231
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/4S;->A09(Landroid/view/ViewGroup;Z)V

    .line 11232
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 11233
    .end local p0    # "i":I
    :cond_1
    if-nez p2, :cond_2

    .line 11234
    return-void

    .line 11235
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 11236
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11237
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11238
    .end local p0
    :goto_1
    return-void

    .line 11239
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 11240
    .local p0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11241
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 5

    .line 11242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11243
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    .line 11244
    .local p0, "itemView":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2z;->A00(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 11245
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/2z;->A09(Landroid/view/View;I)V

    .line 11246
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2z;->A0E(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11247
    const/16 v4, 0x4000

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "r5izwM6EITTd8J0QgfTuliuK3Ylx6gnH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "CLm8SGIYJT8sX0J5oMrTiG0qZUHKeksn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A09:Lcom/facebook/ads/redexgen/X/ag;

    .line 11249
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ag;->A0A()Lcom/facebook/ads/redexgen/X/2d;

    move-result-object v0

    .line 11250
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2d;)V

    .line 11251
    .end local p0    # "itemView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 11252
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 11253
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A09(Landroid/view/ViewGroup;Z)V

    .line 11254
    :cond_0
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 1

    .line 11255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A07:Lcom/facebook/ads/redexgen/X/4T;

    if-eqz v0, :cond_0

    .line 11256
    const/4 v0, 0x0

    throw v0

    .line 11257
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    .line 11258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    if-eqz v0, :cond_1

    .line 11259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4k;->A0C(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11260
    :cond_1
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/4c;)Z
    .locals 6

    .line 11261
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    return v0

    .line 11263
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-ltz v0, :cond_4

    iget v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 11264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 11265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/48;->A04(I)I

    move-result v1

    .line 11266
    .local p0, "type":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 11267
    return v5

    .line 11268
    .end local p0    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_3

    .line 11269
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0L()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/48;->A05(I)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 11270
    :cond_3
    return v0

    .line 11271
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd3

    const/16 v1, 0x3c

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11272
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/4c;IIJ)Z
    .locals 8

    .line 11273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11274
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v3

    .line 11275
    .local p0, "viewType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getNanoTime()J

    move-result-wide v4

    .line 11276
    .local v3, "startBindNs":J
    const-wide v1, 0x7fffffffffffffffL

    move-wide v6, p4

    cmp-long v0, v6, v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 11277
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/4R;->A0A(IJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11278
    const/4 v0, 0x0

    return v0

    .line 11279
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/48;->A0B(Lcom/facebook/ads/redexgen/X/4c;I)V

    .line 11280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getNanoTime()J

    move-result-wide v0

    .line 11281
    .local p1, "endBindNs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v2

    sub-long/2addr v0, v4

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;->A05(IJ)V

    .line 11282
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4S;->A0A(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11284
    iput p3, p1, Lcom/facebook/ads/redexgen/X/4c;->A04:I

    .line 11285
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0F()I
    .locals 1

    .line 11286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final A0G(I)Landroid/view/View;
    .locals 1

    .line 11287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    return-object v0
.end method

.method public final A0H(I)Landroid/view/View;
    .locals 1

    .line 11288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A00(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/4R;
    .locals 1

    .line 11289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    if-nez v0, :cond_0

    .line 11290
    new-instance v0, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4R;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 11291
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    return-object v0
.end method

.method public final A0J(IZJ)Lcom/facebook/ads/redexgen/X/4c;
    .locals 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11292
    move-object/from16 v2, p0

    move-object v2, v2

    move/from16 v13, p1

    if-ltz v13, :cond_1b

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-ge v13, v0, :cond_1b

    .line 11293
    const/4 v9, 0x0

    .line 11294
    .local v2, "fromScrapOrHiddenOrCache":Z
    const/4 v11, 0x0

    .line 11295
    .local v13, "holder":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 11296
    invoke-direct {v2, v13}, Lcom/facebook/ads/redexgen/X/4S;->A01(I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11297
    if-eqz v11, :cond_1

    const/4 v9, 0x1

    .line 11298
    :cond_0
    :goto_0
    move/from16 v7, p2

    if-nez v11, :cond_7

    .line 11299
    invoke-direct {v2, v13, v7}, Lcom/facebook/ads/redexgen/X/4S;->A02(IZ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11300
    if-eqz v11, :cond_7

    .line 11301
    invoke-direct {v2, v11}, Lcom/facebook/ads/redexgen/X/4S;->A0D(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11302
    if-nez v7, :cond_4

    .line 11303
    const/4 v6, 0x4

    sget-object v5, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x6

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11304
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v5, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v5, v0

    invoke-virtual {v11, v6}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11305
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11306
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/El;->removeDetachedView(Landroid/view/View;Z)V

    .line 11307
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0T()V

    .line 11308
    :cond_3
    :goto_1
    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/4S;->A0c(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11309
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 11310
    :cond_5
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11311
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    goto :goto_1

    .line 11312
    :cond_6
    const/4 v9, 0x1

    .line 11313
    :cond_7
    :goto_2
    move-wide/from16 v14, p3

    if-nez v11, :cond_12

    .line 11314
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/av;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/av;->A0E(I)I

    move-result v5

    .line 11315
    .local v7, "offsetPosition":I
    if-ltz v5, :cond_f

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    if-ge v5, v0, :cond_f

    .line 11316
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/48;->A04(I)I

    move-result v6

    .line 11317
    .local v14, "type":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11318
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/48;->A05(I)J

    move-result-wide v0

    invoke-direct {v2, v0, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/4S;->A03(JIZ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11319
    if-eqz v11, :cond_8

    .line 11320
    iput v5, v11, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    .line 11321
    const/4 v9, 0x1

    .line 11322
    :cond_8
    if-nez v11, :cond_a

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A04:Lcom/facebook/ads/redexgen/X/4a;

    if-eqz v0, :cond_a

    .line 11323
    invoke-virtual {v0, v2, v13, v6}, Lcom/facebook/ads/redexgen/X/4a;->A00(Lcom/facebook/ads/redexgen/X/4S;II)Landroid/view/View;

    move-result-object v7

    .line 11324
    .local v4, "view":Landroid/view/View;
    if-eqz v7, :cond_a

    .line 11325
    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    sget-object v5, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v5, v0

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v5, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v5, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v5, v0

    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/El;->A1I(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11326
    if-eqz v11, :cond_e

    .line 11327
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-nez v0, :cond_d

    .line 11328
    .end local v4    # "view":Landroid/view/View;
    :cond_a
    if-nez v11, :cond_b

    .line 11329
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4S;->A0I()Lcom/facebook/ads/redexgen/X/4R;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4R;->A03(I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11330
    if-eqz v11, :cond_b

    .line 11331
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0R()V

    .line 11332
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/El;->A1C:Z

    if-eqz v0, :cond_b

    .line 11333
    invoke-direct {v2, v11}, Lcom/facebook/ads/redexgen/X/4S;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11334
    :cond_b
    if-nez v11, :cond_12

    .line 11335
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getNanoTime()J

    move-result-wide v18

    .line 11336
    .local v4, "start":J
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v14, v7

    if-eqz v0, :cond_10

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    sget-object v5, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v5, v0

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    .line 11337
    move/from16 v17, v6

    move-wide/from16 v20, v14

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/4R;->A0B(IJJ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 11338
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 11339
    :cond_c
    sget-object v5, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "CpFYgdjXbTYcgq0xZrcwPhsUkhWCoe8H"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    const-string v1, "hTYlCSa40TnYF5pqDe823noVgbSAUXoO"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    move/from16 v17, v6

    move-wide/from16 v20, v14

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/4R;->A0B(IJJ)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3

    .line 11340
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21c

    const/16 v1, 0x71

    const/16 v0, 0x5d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11341
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11342
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28d

    const/16 v1, 0x4a

    const/16 v0, 0x7b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11343
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11344
    .end local v14    # "type":I
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa5

    const/16 v1, 0x2e

    const/16 v0, 0x37

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    const/16 v1, 0x8

    const/16 v0, 0x74

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11345
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11346
    :cond_10
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/48;->A06(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11347
    invoke-static {}, Lcom/facebook/ads/redexgen/X/El;->A12()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11348
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/El;->A0I(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/El;

    move-result-object v1

    .line 11349
    .local v9, "innerView":Lcom/facebook/ads/redexgen/X/El;
    if-eqz v1, :cond_11

    .line 11350
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A09:Ljava/lang/ref/WeakReference;

    .line 11351
    .end local v9    # "innerView":Lcom/facebook/ads/redexgen/X/El;
    :cond_11
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getNanoTime()J

    move-result-wide v0

    .line 11352
    .local v9, "end":J
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    sub-long v0, v0, v18

    invoke-virtual {v5, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;->A06(IJ)V

    .line 11353
    .end local v2    # "fromScrapOrHiddenOrCache":Z
    .end local v13    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    .local v9, "fromScrapOrHiddenOrCache":Z
    .local v11, "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_12
    if-eqz v9, :cond_13

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_13

    .line 11354
    const/16 v1, 0x2000

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0l(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 11355
    invoke-virtual {v11, v4, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0V(II)V

    .line 11356
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Z

    if-eqz v0, :cond_13

    .line 11357
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/4G;->A00(Lcom/facebook/ads/redexgen/X/4c;)I

    move-result v0

    .line 11358
    .local v2, "changeFlags":I
    or-int/lit16 v5, v0, 0x1000

    .line 11359
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/El;->A05:Lcom/facebook/ads/redexgen/X/4G;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11360
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0M()Ljava/util/List;

    move-result-object v0

    .line 11361
    invoke-virtual {v4, v1, v11, v5, v0}, Lcom/facebook/ads/redexgen/X/4G;->A07(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4c;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v1

    .line 11362
    .local v13, "info":Lcom/facebook/ads/redexgen/X/4F;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v11, v1}, Lcom/facebook/ads/redexgen/X/El;->A1n(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;)V

    .line 11363
    .end local v2    # "changeFlags":I
    .end local v13    # "info":Lcom/facebook/ads/redexgen/X/4F;
    :cond_13
    const/4 v6, 0x0

    .line 11364
    .local v0, "bound":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0b()Z

    move-result v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_14
    sget-object v4, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "SzCboBEvvN0uPYYtuolLcQSfyvvoQlbe"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "eNPYINxaBCA8kGYswkn0xEDpKkZysiEv"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    if-eqz v5, :cond_15

    .line 11365
    iput v13, v11, Lcom/facebook/ads/redexgen/X/4c;->A04:I

    goto :goto_4

    .line 11366
    :cond_15
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0b()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0h()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 11367
    :cond_16
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/av;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/av;->A0E(I)I

    move-result v12

    .line 11368
    .local v0, "offsetPosition":I
    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/4S;->A0E(Lcom/facebook/ads/redexgen/X/4c;IIJ)Z

    move-result v6

    .line 11369
    .end local v0    # "offsetPosition":I
    :cond_17
    :goto_4
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 11370
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_19

    .line 11371
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4L;

    .line 11372
    .local v13, "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11373
    .restart local v13    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    :goto_5
    iput-object v11, v1, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    .line 11374
    if-eqz v9, :cond_18

    if-eqz v6, :cond_18

    :goto_6
    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 11375
    return-object v11

    .line 11376
    :cond_18
    const/4 v3, 0x0

    goto :goto_6

    .line 11377
    .end local v13    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    :cond_19
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 11378
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4L;

    .line 11379
    .restart local v13    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 11380
    .end local v13    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    :cond_1a
    check-cast v1, Lcom/facebook/ads/redexgen/X/4L;

    goto :goto_5

    .line 11381
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v13
    .end local v9    # "fromScrapOrHiddenOrCache":Z
    .end local v11    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10f

    const/16 v1, 0x16

    const/16 v0, 0x1a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    const/16 v1, 0xe

    const/4 v0, 0x3

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11382
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11383
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation

    .line 11384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A07:Ljava/util/List;

    return-object v0
.end method

.method public final A0L()V
    .locals 3

    .line 11385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11386
    .local p0, "cachedCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 11387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    .line 11388
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0N()V

    .line 11389
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11390
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11391
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 11392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0N()V

    .line 11393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11394
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 11395
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11396
    .local v2, "changedScrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 11397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0N()V

    .line 11398
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11399
    .end local v2    # "changedScrapCount":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final A0M()V
    .locals 1

    .line 11400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 11402
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11403
    :cond_0
    return-void
.end method

.method public final A0N()V
    .locals 4

    .line 11404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11405
    .local p0, "cachedCount":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 11406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    .line 11407
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4L;

    .line 11408
    .local v2, "layoutParams":Lcom/facebook/ads/redexgen/X/4L;
    if-eqz v1, :cond_0

    .line 11409
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 11410
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    .end local v2    # "layoutParams":Lcom/facebook/ads/redexgen/X/4L;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11411
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A0O()V
    .locals 4

    .line 11412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11414
    .local p0, "cachedCount":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 11415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11416
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_0

    .line 11417
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11418
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0Z(Ljava/lang/Object;)V

    .line 11419
    .end local v0    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11420
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4S;->A07()V

    .line 11421
    :cond_2
    return-void
.end method

.method public final A0P()V
    .locals 6

    .line 11422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4K;->A00:I

    .line 11423
    .local p0, "extraCache":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    .line 11424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 11425
    .local v0, "i":I
    :goto_1
    if-ltz v5, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v3, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "FM5srU9o6TBj8QlSYYqmaX9MZyJMPTMr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "mnADOFh1HT7Eu0tfTP5EsiAEmob0QgOc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-le v4, v3, :cond_2

    .line 11426
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    .line 11427
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 11428
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 11429
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public final A0Q()V
    .locals 1

    .line 11430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11431
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4S;->A07()V

    .line 11432
    return-void
.end method

.method public final A0R(I)V
    .locals 0

    .line 11433
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A03:I

    .line 11434
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4S;->A0P()V

    .line 11435
    return-void
.end method

.method public final A0S(II)V
    .locals 4

    .line 11436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11437
    .local p0, "cachedCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 11438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11439
    .local p2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-lt v0, p1, :cond_0

    .line 11440
    const/4 v0, 0x1

    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0X(IZ)V

    .line 11441
    .end local p2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11442
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method public final A0T(II)V
    .locals 10

    .line 11443
    if-ge p1, p2, :cond_5

    .line 11444
    move v8, p1

    .line 11445
    .local p0, "start":I
    move v7, p2

    .line 11446
    .local p1, "end":I
    const/4 v6, -0x1

    .line 11447
    .local p2, "inBetweenOffset":I
    .restart local p2    # "inBetweenOffset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 11448
    .local v8, "cachedCount":I
    const/4 v4, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 11449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11450
    .local v6, "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "cFmhi90XdThNIAIvLG1ELsmorqwue7bW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "gMdRC4SnPTyM2LuqOFUd7OSBbS10isvk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget v9, v3, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-lt v9, v8, :cond_1

    :goto_2
    iget v0, v3, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-le v0, v7, :cond_2

    .line 11451
    .end local v6    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11452
    :cond_2
    iget v0, v3, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    .line 11453
    sub-int v0, p2, p1

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0X(IZ)V

    goto :goto_3

    .line 11454
    :cond_3
    invoke-virtual {v3, v6, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0X(IZ)V

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "A14t4icosHFjJgYsioGHWsaKF2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "GpVxWh88SKnyhKNqkiidQlJJ7W"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-lt v9, v8, :cond_1

    goto :goto_2

    .line 11455
    .end local p0    # "start":I
    .end local p1    # "end":I
    .end local p2    # "inBetweenOffset":I
    :cond_5
    move v8, p2

    .line 11456
    .restart local p0    # "start":I
    move v7, p1

    .line 11457
    .restart local p1    # "end":I
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 11458
    .end local v7    # "i":I
    :cond_6
    return-void
.end method

.method public final A0U(II)V
    .locals 4

    .line 11459
    add-int v3, p1, p2

    .line 11460
    .local p0, "positionEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11461
    .local p1, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local p2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 11462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11463
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-nez v1, :cond_1

    .line 11464
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11465
    :cond_1
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    .line 11466
    .local v0, "pos":I
    if-lt v0, p1, :cond_0

    if-ge v0, v3, :cond_0

    .line 11467
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11468
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    goto :goto_1

    .line 11469
    .end local p2    # "i":I
    :cond_2
    return-void
.end method

.method public final A0V(IIZ)V
    .locals 4

    .line 11470
    add-int v3, p1, p2

    .line 11471
    .local p0, "removedEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11472
    .local p1, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local p2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 11473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11474
    .local p3, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_0

    .line 11475
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-lt v0, v3, :cond_1

    .line 11476
    neg-int v0, p2

    invoke-virtual {v1, v0, p3}, Lcom/facebook/ads/redexgen/X/4c;->A0X(IZ)V

    .line 11477
    .end local p3    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11478
    :cond_1
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-lt v0, p1, :cond_0

    .line 11479
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11480
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    goto :goto_1

    .line 11481
    .end local p2    # "i":I
    :cond_2
    return-void
.end method

.method public final A0W(Landroid/view/View;)V
    .locals 2

    .line 11482
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 11483
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A01(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4S;)Lcom/facebook/ads/redexgen/X/4S;

    .line 11484
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0G(Lcom/facebook/ads/redexgen/X/4c;Z)Z

    .line 11485
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    .line 11486
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4S;->A0c(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11487
    return-void
.end method

.method public final A0X(Landroid/view/View;)V
    .locals 4

    .line 11488
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 11489
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11490
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->A21(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11491
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11492
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0Y(Lcom/facebook/ads/redexgen/X/4S;Z)V

    .line 11493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11494
    :goto_0
    return-void

    .line 11495
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 11496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    .line 11497
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0Y(Lcom/facebook/ads/redexgen/X/4S;Z)V

    .line 11498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11499
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x7a

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11500
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0Y(Landroid/view/View;)V
    .locals 3

    .line 11501
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    .line 11502
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11503
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/El;->removeDetachedView(Landroid/view/View;Z)V

    .line 11504
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11505
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0T()V

    .line 11506
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A0c(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11507
    return-void

    .line 11508
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11509
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    goto :goto_0
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/48;Lcom/facebook/ads/redexgen/X/48;Z)V
    .locals 1

    .line 11510
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4S;->A0Q()V

    .line 11511
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4S;->A0I()Lcom/facebook/ads/redexgen/X/4R;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4R;->A08(Lcom/facebook/ads/redexgen/X/48;Lcom/facebook/ads/redexgen/X/48;Z)V

    .line 11512
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/4R;)V
    .locals 5

    .line 11513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    if-eqz v0, :cond_0

    .line 11514
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4R;->A04()V

    .line 11515
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 11516
    if-eqz p1, :cond_2

    .line 11517
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "lsZK0accpgBQgJYjkQv5Abfcayw6pcR0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Z7g3Rn3k4gV3vNYe90sCMa52PcoBzFf1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/4R;->A07(Lcom/facebook/ads/redexgen/X/48;)V

    .line 11518
    :cond_2
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/4a;)V
    .locals 0

    .line 11519
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A04:Lcom/facebook/ads/redexgen/X/4a;

    .line 11520
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 7

    .line 11521
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11522
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x125

    const/16 v1, 0x38

    const/16 v0, 0x4b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11523
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x5b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    .line 11524
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11525
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "XmVzY8sdohxIZJ5Ojk7HGi6GVO"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "m3xjIJQIi7Ro4dRZ8OgPCgQ0SJ"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    if-nez v5, :cond_f

    .line 11526
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-nez v0, :cond_e

    .line 11527
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0F(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v6

    .line 11528
    .local p0, "transientStatePreventsRecycling":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v0, :cond_6

    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    .line 11529
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/48;->A0D(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 11530
    .local v2, "forceRecycle":Z
    :goto_1
    const/4 v1, 0x0

    .line 11531
    .local v3, "cached":Z
    const/4 v5, 0x0

    .line 11532
    .local v0, "recycled":Z
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11533
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    if-lez v0, :cond_a

    const/16 v0, 0x20e

    .line 11534
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0l(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 11535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 11536
    .local v0, "cachedViewSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    if-lt v4, v0, :cond_5

    if-lez v4, :cond_5

    .line 11537
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    .line 11538
    add-int/lit8 v4, v4, -0x1

    .line 11539
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_0

    .line 11540
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 11541
    .local p1, "targetCacheIndex":I
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "Q1OZT6LnkVYbRcYxNkw6Mn7gWXto99yC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "RVxEgLz70808ymY8dF1xTnmhZlFYlEUe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/El;->A12()Z

    move-result v0

    if-eqz v0, :cond_9

    if-lez v4, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    .line 11542
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A05(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 11543
    add-int/lit8 v2, v4, -0x1

    .line 11544
    .local v4, "cacheIndex":I
    :goto_2
    if-ltz v2, :cond_8

    .line 11545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    .line 11546
    .local v3, "cachedPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/au;->A05(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 11547
    :cond_8
    add-int/lit8 v4, v2, 0x1

    .line 11548
    .end local v4    # "cacheIndex":I
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 11549
    const/4 v1, 0x1

    .line 11550
    .end local p1    # "targetCacheIndex":I
    .end local v0    # "cachedViewSize":I
    :cond_a
    if-nez v1, :cond_b

    .line 11551
    invoke-virtual {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/4S;->A0e(Lcom/facebook/ads/redexgen/X/4c;Z)V

    .line 11552
    const/4 v5, 0x1

    .line 11553
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4k;->A0C(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11554
    if-nez v1, :cond_c

    if-nez v5, :cond_c

    if-eqz v6, :cond_c

    .line 11555
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11556
    :cond_c
    return-void

    .line 11557
    .end local v3    # "cachedPos":I
    :cond_d
    add-int/lit8 v2, v2, -0x1

    .line 11558
    goto :goto_2

    .line 11559
    .end local p0    # "transientStatePreventsRecycling":Z
    .end local v2    # "forceRecycle":Z
    .end local v3
    .end local v0
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ae

    const/16 v1, 0x6e

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11560
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11561
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15d

    const/16 v1, 0x51

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11562
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 4

    .line 11563
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0D(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11564
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "g9dUUHlnr2dNWy2bvXbXpUnxFV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "1VljHDZyW4yQ7QRXruVc6WBcEp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11565
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11566
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A01(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4S;)Lcom/facebook/ads/redexgen/X/4S;

    .line 11567
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0G(Lcom/facebook/ads/redexgen/X/4c;Z)Z

    .line 11568
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    .line 11569
    return-void
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/4c;Z)V
    .locals 3

    .line 11570
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0u(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11571
    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4c;->A0l(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11572
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/facebook/ads/redexgen/X/4c;->A0V(II)V

    .line 11573
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/2z;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2d;)V

    .line 11574
    :cond_0
    if-eqz p2, :cond_1

    .line 11575
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4S;->A0C(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11576
    :cond_1
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 11577
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4S;->A0I()Lcom/facebook/ads/redexgen/X/4R;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4R;->A09(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11578
    return-void
.end method
