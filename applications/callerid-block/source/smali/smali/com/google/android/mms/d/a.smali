.class public Lcom/google/android/mms/d/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Li/a/a/a/d;)Li/a/a/a/h;
    .locals 2

    const-string v0, "par"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Li/a/a/a/h;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-interface {v0, v1}, Li/a/a/a/c;->e(F)V

    invoke-interface {p0}, Li/a/a/a/d;->c()Li/a/a/a/e;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Li/a/a/a/d;Ljava/lang/String;)Li/a/a/a/g;
    .locals 0

    invoke-interface {p1, p0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    check-cast p0, Li/a/a/a/g;

    invoke-static {p2}, Lcom/google/android/mms/d/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Li/a/a/a/g;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Lcom/google/android/mms/c/j;)Li/a/a/a/d;
    .locals 11

    new-instance v0, Le/a/b/b/g/d;

    invoke-direct {v0}, Le/a/b/b/g/d;-><init>()V

    const-string v1, "smil"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Li/a/a/a/e;

    const-string v2, "xmlns"

    const-string v3, "http://www.w3.org/2001/SMIL20/Language"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "head"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Li/a/a/a/e;

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v3, "layout"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    check-cast v3, Li/a/a/a/f;

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "body"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Li/a/a/a/e;

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/google/android/mms/d/a;->a(Li/a/a/a/d;)Li/a/a/a/h;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/mms/c/j;->d()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_9

    if-eqz v1, :cond_1

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/google/android/mms/d/a;->a(Li/a/a/a/d;)Li/a/a/a/h;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/android/mms/c/j;->c(I)Lcom/google/android/mms/c/o;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/c/o;->g()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "text/plain"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_8

    const-string v9, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "text/html"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v8}, Lcom/google/android/mms/a;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/google/android/mms/c/o;->a()Ljava/lang/String;

    move-result-object v5

    const-string v7, "img"

    :goto_1
    invoke-static {v7, v0, v5}, Lcom/google/android/mms/d/a;->b(Ljava/lang/String;Li/a/a/a/d;Ljava/lang/String;)Li/a/a/a/g;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v8}, Lcom/google/android/mms/a;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lcom/google/android/mms/c/o;->a()Ljava/lang/String;

    move-result-object v5

    const-string v7, "video"

    goto :goto_1

    :cond_5
    invoke-static {v8}, Lcom/google/android/mms/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Lcom/google/android/mms/c/o;->a()Ljava/lang/String;

    move-result-object v5

    const-string v7, "audio"

    goto :goto_1

    :cond_6
    const-string v9, "text/x-vCard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/c/o;->a()Ljava/lang/String;

    move-result-object v5

    const-string v7, "vcard"

    goto :goto_1

    :cond_7
    const-string v7, "creating_smil_document"

    const-string v8, "unknown mimetype"

    invoke-static {v7, v8}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v7}, Lcom/google/android/mms/c/o;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text"

    invoke-static {v7, v0, v6}, Lcom/google/android/mms/d/a;->b(Ljava/lang/String;Li/a/a/a/d;Ljava/lang/String;)Li/a/a/a/g;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v6, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
