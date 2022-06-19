.class public Lcom/android/mms/dom/smil/parser/SmilXmlParser;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

.field private mXmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "org.xml.sax.driver"

    const-string v1, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    new-instance v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private validateDocument(Lorg/w3c/dom/smil/SMILDocument;)V
    .locals 0

    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->reset()V

    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object p1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->validateDocument(Lorg/w3c/dom/smil/SMILDocument;)V

    return-object p1
.end method
